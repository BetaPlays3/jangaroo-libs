package ext.form {
import ext.Element;
import ext.Panel;

/**
 * Standard container used for grouping items within a <b class='link' title='ext.form.FormPanel'>form</b>.
 * <pre><code>
var form = new ext.FormPanel({
    title&#58; 'Simple Form with FieldSets',
    labelWidth&#58; 75, // label settings here cascade unless overridden
    url&#58; 'save-form.php',
    frame&#58;true,
    bodyStyle&#58;'padding:5px 5px 0',
    width&#58; 700,
    renderTo&#58; document.body,
    layout&#58;'column', // arrange items in columns
    defaults&#58; {      // defaults applied to items
        layout&#58; 'form',
        border&#58; false,
        bodyStyle&#58; 'padding:4px'
    },
    items&#58; [{
        &#47;/ Fieldset in Column 1
        xtype&#58;'fieldset',
        columnWidth&#58; 0.5,
        title&#58; 'Fieldset 1',
        collapsible&#58; true,
        autoHeight&#58;true,
        defaults&#58; {
            anchor&#58; '-20' // leave room for error icon
        },
        defaultType&#58; 'textfield',
        items :[{
                fieldLabel&#58; 'Field 1'
            }, {
                fieldLabel&#58; 'Field 2'
            }, {
                fieldLabel&#58; 'Field 3'
            }
        ]
    },{
        &#47;/ Fieldset in Column 2 - Panel inside
        xtype&#58;'fieldset',
        title&#58; 'Show Panel', // title, header, or checkboxToggle creates fieldset header
        autoHeight&#58;true,
        columnWidth&#58; 0.5,
        checkboxToggle&#58; true,
        collapsed&#58; true, // fieldset initially collapsed
        layout&#58;'anchor',
        items :[{
            xtype&#58; 'panel',
            anchor&#58; '100%',
            title&#58; 'Panel inside a fieldset',
            frame&#58; true,
            height&#58; 100
        }]
    }]
});
 * </code></pre>
*/
public class FieldSet extends Panel {
/**
 * @constructor
 * @param config Configuration options
 * @xtype fieldset
 */
public function FieldSet(config : Object) {
  super(config);
}
    /**
     * @cfg {Mixed} checkboxToggle <code>true</code> to render a checkbox into the fieldset frame just
     * in front of the legend to expand/collapse the fieldset when the checkbox is toggled. (defaults
     * to <code>false</code>).
     * <p>A <b class='link' title='ext.DomHelper'>DomHelper</b> element spec may also be specified to create the checkbox.
     * If <code>true</code> is specified, the default DomHelper config object used to create the element
     * is:</p><pre><code>
     * {tag: 'input', type: 'checkbox', name: this.checkboxName || this.id+'-checkbox'}
     * </code></pre>   
     */
    /**
     * @cfg {String} checkboxName The name to assign to the fieldset's checkbox if <code><b class='link' title='#checkboxToggle'>checkboxToggle</b> = true</code>
     * (defaults to <code>'[checkbox id]-checkbox'</code>).
     */
    /**
     * @cfg {Boolean} collapsible
     * <code>true</code> to make the fieldset collapsible and have the expand/collapse toggle button automatically
     * rendered into the legend element, <code>false</code> to keep the fieldset statically sized with no collapse
     * button (defaults to <code>false</code>). Another option is to configure <code><b class='link' title='#checkboxToggle'>checkboxToggle</b></code>.
     */
    /**
     * @cfg {Number} labelWidth The width of labels. This property cascades to child containers.
     */
    /**
     * @cfg {String} itemCls A css class to apply to the <code>x-form-item</code> of fields (see 
     * <b class='link'>Ext.layout.FormLayout</b>.<b class='link' title='Ext.layout.FormLayout#fieldTpl'>fieldTpl</b> for details).
     * This property cascades to child containers.
     */
    /**
     * @cfg {String} baseCls The base CSS class applied to the fieldset (defaults to <code>'x-fieldset'</code>).
     */
    //public var baseCls  : String;
    /**
     * @cfg {String} layout The <b class='link'>ext.Container#layout</b> to use inside the fieldset (defaults to <code>'form'</code>).
     */
    public var layout  : String;
    /**
     * @cfg {Boolean} animCollapse
     * <code>true</code> to animate the transition when the panel is collapsed, <code>false</code> to skip the
     * animation (defaults to <code>false</code>).
     */
    //public var animCollapse  : Boolean;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function onCollapse(doAnim, animArg) : void;
    override protected native function onExpand(doAnim, animArg) : void;
    /**
     * This function is called by the fieldset's checkbox when it is toggled (only applies when
     * checkboxToggle = true).  This method should never be called externally, but can be
     * overridden to provide custom behavior when the checkbox is toggled if needed.
     */
    public native function onCheckClick() : void;
    /**
     * @cfg {String/Number} activeItem
     * @hide
     */
    /**
     * @cfg {Mixed} applyTo
     * @hide
     */
    /**
     * @cfg {Boolean} bodyBorder
     * @hide
     */
    /**
     * @cfg {Boolean} border
     * @hide
     */
    /**
     * @cfg {Boolean/Number} bufferResize
     * @hide
     */
    /**
     * @cfg {Boolean} collapseFirst
     * @hide
     */
    /**
     * @cfg {String} defaultType
     * @hide
     */
    /**
     * @cfg {String} disabledClass
     * @hide
     */
    /**
     * @cfg {String} elements
     * @hide
     */
    /**
     * @cfg {Boolean} floating
     * @hide
     */
    /**
     * @cfg {Boolean} footer
     * @hide
     */
    /**
     * @cfg {Boolean} frame
     * @hide
     */
    /**
     * @cfg {Boolean} header
     * @hide
     */
    /**
     * @cfg {Boolean} headerAsText
     * @hide
     */
    /**
     * @cfg {Boolean} hideCollapseTool
     * @hide
     */
    /**
     * @cfg {String} iconCls
     * @hide
     */
    /**
     * @cfg {Boolean/String} shadow
     * @hide
     */
    /**
     * @cfg {Number} shadowOffset
     * @hide
     */
    /**
     * @cfg {Boolean} shim
     * @hide
     */
    /**
     * @cfg {Object/Array} tbar
     * @hide
     */
    /**
     * @cfg {String} tabTip
     * @hide
     */
    /**
     * @cfg {Boolean} titleCollapse
     * @hide
     */
    /**
     * @cfg {Array} tools
     * @hide
     */
    /**
     * @cfg {ext.Template/ext.XTemplate} toolTemplate
     * @hide
     */
    /**
     * @cfg {String} xtype
     * @hide
     */
    /**
     * @property header
     * @hide
     */
    /**
     * @property footer
     * @hide
     */
    /**
     * @method focus
     * @hide
     */
    /**
     * @method getBottomToolbar
     * @hide
     */
    /**
     * @method getTopToolbar
     * @hide
     */
    /**
     * @method setIconClass
     * @hide
     */
    /**
     * @event activate
     * @hide
     */
    /**
     * @event beforeclose
     * @hide
     */
    /**
     * @event bodyresize
     * @hide
     */
    /**
     * @event close
     * @hide
     */
    /**
     * @event deactivate
     * @hide
     */
}}
