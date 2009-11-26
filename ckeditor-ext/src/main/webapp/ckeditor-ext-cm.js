// ckeditor extension
Ext.form.CKEditor = Ext.extend(Ext.form.TextArea, {
  constructor: function (config) {
    this.config = config;
    Ext.form.CKEditor.superclass.constructor.call(this, config);
  },

  onRender: function (ct, position) {

    if (!this.el) {
      this.defaultAutoCreate = {
        tag: "textarea",
        autocomplete: "off"
      };
    }
    Ext.form.TextArea.superclass.onRender.call(this, ct, position);
    CKEDITOR.replace(this.id, {
      removePlugins: 'toolbar, elementspath',
      toolbar: [],
      customConfig : 'config.js'
    });
    var style = new CKEDITOR.style({ element : 'b' });
    var editor = this.getCKEditor();
    editor.attachStyleStateChange(style, function(state)
    {
      if (state == CKEDITOR.TRISTATE_ON)
        alert('The current state for the B element is ON');
      else
        alert('The current state for the B element is OFF');
    });


  },
  getCKEditor: function() {
    return CKEDITOR.instances[this.id];
  },
  setValue: function (value) {
    Ext.form.TextArea.superclass.setValue.call(this, value);
    this.getCKEditor().setData(value);
  },
  getValue: function () {
    this.getCKEditor().updateElement();
    return Ext.form.TextArea.superclass.getValue.call(this);
  },
  getRawValue: function () {
    this.getCKEditor().updateElement();
    return Ext.form.TextArea.superclass.getRawValue.call(this);
  }
});
Ext.reg('ckeditor', Ext.form.CKEditor);


var BoldButton = Ext.extend(Ext.Button, {
  scale: "small",
  iconCls: "cm-bold-16",
  enableToggle: true,
  pressed: true
});
// register xtype
Ext.reg('boldbutton', BoldButton);


// underline button
var UnderlineButton = Ext.extend(Ext.Button, {
  scale: "small",
  iconCls: "cm-underline-16",
  enableToggle: true,
  pressed: false,
  handler: function() {
    window.alert(this.richtextEditor.getCKEditor().id);
  }
});
// register xtype
Ext.reg('underlinebutton', UnderlineButton);


// italic button
var ItalicButton = Ext.extend(Ext.Button, {
  scale: "small",
  iconCls: "cm-italic-16",
  enableToggle: true,
  pressed: false,
  handler: function() {
    window.alert(this.richtextEditor.getCKEditor().id);
  }
});
// register xtype
Ext.reg('italicbutton', ItalicButton);



Ext.ux.RichtextEditor = Ext.extend(Ext.Panel, {
  constructor: function(config) {
    Ext.ux.RichtextEditor.superclass.constructor.call(this, Ext.apply(config, {
      layout: "anchor",
      items:
        [
          {
            tbar: [
              {
                xtype: "boldbutton",
                richtextEditor: this
              },

              {
                xtype: "underlinebutton",
                richtextEditor: this
              },
              {
                xtype: "italicbutton",
                richtextEditor: this
              }
            ],
            hidden: false,
            itemId: 'toolbar'
          },
          {
            xtype: "ckeditor",
            id: "myCKEditor",
            itemId: "ckeditor"
          }
        ]
    }));
  },
  getCKEditor: function() {
    return this.getComponent("ckeditor");
  }
});


// register xtype
Ext.reg('richtexteditor', Ext.ux.RichtextEditor);