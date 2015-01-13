package ext.form {
import ext.config.textarea;

/**
 * Multiline text field. Can be used as a direct replacement for traditional textarea fields, plus adds support for auto-sizing.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'textarea' / the EXML element &lt;textarea>.</p>
 * @see ext.config.textarea
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextArea Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "form.TextArea")]
public class TextArea extends TextField {

  /**
   * Creates a new TextArea
   *
   * @param config Configuration options
   * @see ext.config.textarea
   */
  public function TextArea(config:textarea) {
    super(null);
  }

  /**
   The maximum height to allow when <tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a>=true</tt> (defaults to <tt>1000</tt>)
   */
  override public native function get growMax():Number;

  /**
   The minimum height to allow when <tt><a href="output/Ext.form.TextField.html#Ext.form.TextField-grow">grow</a>=true</tt> (defaults to <tt>60</tt>)
   */
  override public native function get growMin():Number;

  /**
   <tt>true</tt> to prevent scrollbars from appearing regardless of how much text is in the field. This option is only relevant when <a href="output/Ext.form.TextArea.html#Ext.form.TextArea-grow">grow</a> is <tt>true</tt>. Equivalent to setting overflow: hidden, defaults to <tt>false</tt>.
   */
  public native function get preventScrollbars():Boolean;

  /**
   * Automatically grows the field to accommodate the height of the text up to the maximum field height allowed. This only takes effect if grow = true, and fires the <a href="output/Ext.form.TextArea.html#Ext.form.TextArea-autosize">autosize</a> event if the height changes.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextArea-method-autoSize Sencha Docs Ext JS 3.4
   */
  override public native function autoSize():void;

}
}
    