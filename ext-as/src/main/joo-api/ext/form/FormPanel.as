package ext.form {
import ext.Element;
import ext.Panel;

/**
 * <p>Standard form container.</p>
 * 
 * <p><b><u>Layout</u></b></p>
 * <p>By default, FormPanel is configured with <tt>layout:'form'</tt> to use an <b class='link'>Ext.layout.FormLayout</b>
 * layout manager, which styles and renders fields and labels correctly. When nesting additional Containers
 * within a FormPanel, you should ensure that any descendant Containers which host input Fields use the
 * <b class='link'>Ext.layout.FormLayout</b> layout manager.</p>
 * 
 * <p><b><u>BasicForm</u></b></p>
 * <p>Although <b>not listed</b> as configuration options of FormPanel, the FormPanel class accepts all
 * of the config options required to configure its internal <b class='link'>ext.form.BasicForm</b> for:
 * <div class="mdetail-params"><ul>
 * <li><b class='link' title='ext.form.BasicForm#fileUpload file'>uploads</b></li>
 * <li>functionality for <b class='link' title='ext.form.BasicForm#doAction loading, validating and'>submitting</b> the form</li>
 * </ul></div>
 *  
 * <p><b>Note</b>: If subclassing FormPanel, any configuration options for the BasicForm must be applied to
 * the <tt><b>initialConfig</b></tt> property of the FormPanel. Applying <b class='link' title='ext.form.BasicForm'>BasicForm</b>
 * configuration settings to <b><tt>this</tt></b> will <b>not</b> affect the BasicForm's configuration.</p>
 * 
 * <p><b><u>Form Validation</u></b></p>
 * <p>For information on form validation see the following:</p>
 * <div class="mdetail-params"><ul>
 * <li><b class='link'>ext.form.TextField</b></li>
 * <li><b class='link'>ext.form.VTypes</b></li>
 * <li><b class='link' title='ext.form.BasicForm#doAction BasicForm.doAction'><b>clientValidation</b> notes</b></li>
 * <li><tt><b class='link' title='ext.form.FormPanel#monitorValid'>monitorValid</b></tt></li>
 * </ul></div>
 * 
 * <p><b><u>Form Submission</u></b></p>
 * <p>By default, Ext Forms are submitted through Ajax, using <b class='link'>ext.form.Action</b>. To enable normal browser
 * submission of the <b class='link' title='ext.form.BasicForm'>BasicForm</b> contained in this FormPanel, see the
 * <tt><b class='link' title='ext.form.BasicForm#standardSubmit'>standardSubmit</b></tt> option.</p>
 * 
*/
public class FormPanel extends Panel {
/**
 * @constructor
 * @param config Configuration options
 * @xtype form
 */
public function FormPanel(config : Object) {
  super(config);
}
	/**
	 * @cfg {String} formId (optional) The id of the FORM tag (defaults to an auto-generated id).
	 */
    /**
     * @cfg {Boolean} hideLabels
     * <p><tt>true</tt> to hide field labels by default (sets <tt>display:none</tt>). Defaults to
     * <tt>false</tt>.</p>
     * <p>Also see <b class='link'>ext.Component</b>.<tt><b class='link' title='ext.Component#hideLabel'>hideLabel</b></tt>.
     */
    /**
     * @cfg {Number} labelPad
     * The default padding in pixels for field labels (defaults to <tt>5</tt>). <tt>labelPad</tt> only
     * applies if <tt><b class='link'>#labelWidth</b></tt> is also specified, otherwise it will be ignored.
     */
    /**
     * @cfg {String} labelSeparator
     * See <b class='link'>ext.Component</b>.<tt><b class='link' title='ext.Component#labelSeparator'>labelSeparator</b></tt>
     */
    /**
     * @cfg {Number} labelWidth The width of labels in pixels. This property cascades to child containers
     * and can be overridden on any child container (e.g., a fieldset can specify a different <tt>labelWidth</tt>
     * for its fields) (defaults to <tt>100</tt>).
     */
    /**
     * @cfg {String} itemCls A css class to apply to the x-form-item of fields. This property cascades to child containers.
     */
    /**
     * @cfg {Array} buttons
     * An array of <b class='link'>ext.Button</b>s or <b class='link'>ext.Button</b> configs used to add buttons to the footer of this FormPanel.<br>
     * <p>Buttons in the footer of a FormPanel may be configured with the option <tt>formBind: true</tt>. This causes
     * the form's <b class='link' title='#monitorValid valid state monitor'>task</b> to enable/disable those Buttons depending on
     * the form's valid/invalid state.</p>
     */
    /**
     * @cfg {Number} minButtonWidth Minimum width of all buttons in pixels (defaults to <tt>75</tt>).
     */
    //public var minButtonWidth  : Number;
    /**
     * @cfg {String} labelAlign The label alignment value used for the <tt>text-align</tt> specification
     * for the <b>container</b>. Valid values are <tt>"left</tt>", <tt>"top"</tt> or <tt>"right"</tt>
     * (defaults to <tt>"left"</tt>). This property cascades to child <b>containers</b> and can be
     * overridden on any child <b>container</b> (e.g., a fieldset can specify a different <tt>labelAlign</tt>
     * for its fields).
     */
    public var labelAlign  : String;
    /**
     * @cfg {Boolean} monitorValid If <tt>true</tt>, the form monitors its valid state <b>client-side</b> and
     * regularly fires the <b class='link'>#clientvalidation</b> event passing that state.<br>
     * <p>When monitoring valid state, the FormPanel enables/disables any of its configured
     * <b class='link'>#buttons</b> which have been configured with <code>formBind: true</code> depending
     * on whether the <b class='link' title='ext.form.BasicForm#isValid form is'>valid</b> or not. Defaults to <tt>false</tt></p>
     */
    public var monitorValid  : Boolean;
    /**
     * @cfg {Number} monitorPoll The milliseconds to poll valid state, ignored if monitorValid is not true (defaults to 200)
     */
    public var monitorPoll  : Number;
    /**
     * @cfg {String} layout Defaults to <tt>'form'</tt>.  Normally this configuration property should not be altered. 
     * For additional details see <b class='link'>Ext.layout.FormLayout</b> and <b class='link' title='ext.Container#layout'>ext.Container.layout</b>.
     */
    public var layout  : String;
    override protected native function initComponent() : void;
    protected native function createForm() : void;
    protected native function initFields() : void;
  override public native function getLayoutTarget() : Element;
    /**
     * Provides access to the <b class='link' title='ext.form.BasicForm'>Form</b> which this Panel contains.
     * @return The <b class='link' title='ext.form.BasicForm'>Form</b> which this Panel contains.
     */
    public native function getForm() : BasicForm;
    override protected native function onRender(container : Element, position : Element) : void;
    override protected native function beforeDestroy() : void;
    public native function isField(c) : void;
    override protected native function initEvents() : void;
    protected native function onAdd(ct, c) : void;
    protected native function onRemove(ct, c) : void;
    /**
     * Starts monitoring of the valid state of this form. Usually this is done by passing the config
     * option "monitorValid"
     */
    public native function startMonitoring() : void;
    /**
     * Stops monitoring of the valid state of this form
     */
    public native function stopMonitoring() : void;
    /**
     * This is a proxy for the underlying BasicForm's <b class='link'>ext.form.BasicForm#load</b> call.
     * @param options The options to pass to the action (see <b class='link'>ext.form.BasicForm#doAction</b> for details)
     */
    override public native function load(options : *) : Panel;
    override protected native function onDisable() : void;
    override protected native function onEnable() : void;
    protected native function bindHandler() : void;
}}
