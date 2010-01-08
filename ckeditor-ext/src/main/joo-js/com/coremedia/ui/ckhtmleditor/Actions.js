Ext.namespace('com.coremedia.ui.ckhtmleditor');

com.coremedia.ui.ckhtmleditor.CommandAction = Ext.extend(Ext.Action, {
  constructor: function(config) {
    this.commandName = config.commandName;
    delete config.commandName;
    com.coremedia.ui.ckhtmleditor.CommandAction.superclass.constructor.call(this, Ext.apply(config, {
      scale: 'small',
      scope: this,
      handler: function() {
        this.ckEditor.execCommand(this.commandName);
      }
    }));
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
    // Now, we can get the command instance and attach as state change listener:
    var command = this.ckEditor.getCommand(this.commandName);
    command.on('state', this.setState, this);
  },

  setState: function(evt) {
    var oldPressed = !!this.pressed;
    var oldDisabled = !!this.disabled;
    var state = evt.sender.state;
    this.disabled = state === CKEDITOR.TRISTATE_DISABLED;
    if (this.disabled !== oldDisabled) {
      this.callEach(this.disabled ? 'disable' : 'enable');
    }
    if (!this.disabled) {
      this.pressed = state === CKEDITOR.TRISTATE_ON;
      if (this.pressed !== oldPressed) {
        this.callEach('toggle', [this.pressed]);
      }
    }
  }
});

com.coremedia.ui.ckhtmleditor.BoldAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.BoldAction.superclass.constructor.call(this, {
      iconCls: 'cm-bold-16',
      text: 'Bold',
      tooltip: 'Mark bold',
      commandName: 'bold'
    });
  }
});


com.coremedia.ui.ckhtmleditor.ItalicAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ItalicAction.superclass.constructor.call(this, {
      iconCls: 'cm-italic-16',
      text: 'Italic',
      tooltip: 'Mark italic',
      commandName: 'italic'
    });
  }
});


com.coremedia.ui.ckhtmleditor.UnderlineAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.UnderlineAction.superclass.constructor.call(this, {
      iconCls: 'cm-underline-16',
      text: 'Underline',
      tooltip: 'Mark underline',
      commandName: 'underline'
    });
  }
});


com.coremedia.ui.ckhtmleditor.ListNumberedAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ListNumberedAction.superclass.constructor.call(this, {
      iconCls: 'cm-list-numbered-16',
      text: 'Numbered List',
      tooltip: 'Insert numbered list',
      commandName: 'numberedlist'
    });
  }
});


com.coremedia.ui.ckhtmleditor.ListBulletedAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.ListBulletedAction.superclass.constructor.call(this, {
      iconCls: 'cm-list-bulleted-16',
      text: 'Bulleted List',
      tooltip: 'Insert bulleted list',
      commandName: 'bulletedlist'
    });
  }
});


com.coremedia.ui.ckhtmleditor.IndentAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.IndentAction.superclass.constructor.call(this, {
      iconCls: 'indent-16',
      text: 'Indent',
      tooltip: 'Indent',
      commandName: 'indent'
    });
  }
});


com.coremedia.ui.ckhtmleditor.OutdentAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.OutdentAction.superclass.constructor.call(this, {
      iconCls: 'outdent-16',
      text: 'Outdent',
      tooltip: 'Outdent',
      commandName: 'outdent'
    });
  }
});


com.coremedia.ui.ckhtmleditor.LinkAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.LinkAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Link',
      tooltip: 'Link',
      commandName: 'link'
    });
  }
});

com.coremedia.ui.ckhtmleditor.UnlinkAction = Ext.extend(com.coremedia.ui.ckhtmleditor.CommandAction, {
  constructor: function() {
    com.coremedia.ui.ckhtmleditor.UnlinkAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Unlink',
      tooltip: 'Unlink',
      commandName: 'unlink'
    });
  }
});


/*
com.coremedia.ui.ckhtmleditor.LinkAction = Ext.extend(Ext.Action, {
  constructor: function() {
    var win;

    this.pressed = false;

    var href_textField = new Ext.form.TextField({fieldLabel: 'URL', allowBlank:false});
    var target_comboBox = new Ext.form.ComboBox({
      typeAhead: true,
      triggerAction: 'all',
      editable: false,
      fieldLabel: 'Target',
      mode: 'local',
      forceSelection: true,
      store: new Ext.data.ArrayStore({
        id: 0,
        fields: ['value', 'display'],
        data: [
          ['_self', 'same window'],
          ['_blank', 'new window']
        ]
      }),
      valueField: 'value',
      displayField: 'display'
    });

    com.coremedia.ui.ckhtmleditor.LinkAction.superclass.constructor.call(this, {
      iconCls: 'cm-externallink-16',
      text: 'Link',
      tooltip: 'Link',
      scale: 'small',
      scope: this,
      handler: function() {
        if (!win) {
          win = new Ext.Window({
            layout:'fit',
            width:500,
            height:300,
            modal:true,
            closeAction:'hide',
            plain: true,
            items: new Ext.FormPanel({
              frame:true,
              title: 'Insert Link...',
              defaults: {width: 230},
              items: [
                href_textField,
                target_comboBox
              ]
            }),
            buttons: [
              {
                text:'Okay',
                handler: function() {
                  this.ckEditor.focus();
                  this.ckEditor.linkcommand.updateLink({'url' : { 'url' : href_textField.getValue() }, 'target': target_comboBox.getValue() });
                  win.hide();
                }
              },
              {
                text: 'Cancel',
                handler: function() {
                  win.hide();
                }
              }
            ]
          });
        }
        var data = this.ckEditor.linkcommand.retrieveLink();
        href_textField.setValue(data && data.url ? data.url.url : '');
        win.show(this);

      }
    });
  },

  setCKEditor: function(ckEditor) {
    this.ckEditor = ckEditor;
  }
});
*/