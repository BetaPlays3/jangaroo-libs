package ext.form {
import ext.BoxComponent;
import ext.config.label;

/**
 * Basic Label field.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'label' / the EXML element &lt;label>.</p>
 * @see ext.config.label
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Label Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.form.Label")]
public class Label extends BoxComponent {

  /**
   * Creates a new Label
   *
   * @param config The configuration options. If an element is passed, it is set as the internal element and its id used as the component id. If a string is passed, it is assumed to be the id of an existing element and is used as the component id. Otherwise, it is assumed to be a standard config object and is applied to the component.
   * @see ext.config.label
   */
  public function Label(config:label) {
    super(null);
  }

  /**
   The id of the input element to which this label will be bound via the standard HTML 'for' attribute. If not specified, the attribute will not be added to the label.
   */
  public native function get forId():String;

  /**
   The plain text to display within the label (defaults to ''). If you need to include HTML tags within the label's innerHTML, use the <a href="output/Ext.form.Label.html#Ext.form.Label-html">html</a> config instead.
   */
  public native function get text():String;

  /**
   * Updates the label's innerHTML with the specified string.
   *
   * @param text The new label text
   * @param encode False to skip HTML-encoding the text when rendering it to the label (defaults to true which encodes the value). This might be useful if you want to include tags in the label's innerHTML rather than rendering them as string literals per the default logic.
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.Label-method-setText Sencha Docs Ext JS 3.4
   */
  public native function setText(text:String, encode:Boolean = false):Label;

}
}
    