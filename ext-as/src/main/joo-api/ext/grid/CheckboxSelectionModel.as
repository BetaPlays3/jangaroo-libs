package ext.grid {
import ext.config.checkboxselectionmodel;

/**
 * A custom selection model that renders a column of checkboxes that can be toggled to select or deselect rows.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.checkboxselectionmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CheckboxSelectionModel Sencha Docs Ext JS 3.4
 */
public class CheckboxSelectionModel extends RowSelectionModel {

  /**
   *
   *
   * @param config The configuration options
   * @see ext.config.checkboxselectionmodel
   */
  public function CheckboxSelectionModel(config:checkboxselectionmodel) {
    super(null);
  }

  /**
   <tt>true</tt> if rows can only be selected by clicking on the checkbox column (defaults to <tt>false</tt>).
   */
  public native function get checkOnly():Boolean;

  /**
   Any valid text or HTML fragment to display in the header cell for the checkbox column. Defaults to:<pre><code>'&lt;div class="x-grid3-hd-checker"&gt;&amp;#160;&lt;/div&gt;'</code>
   </pre>The default CSS class of <tt>'x-grid3-hd-checker'</tt> displays a checkbox in the header and provides support for automatic check all/none behavior on header click. This string can be replaced by any valid HTML fragment, including a simple text string (e.g., <tt>'Select Rows'</tt>), but the automatic check all/none behavior will only work if the <tt>'x-grid3-hd-checker'</tt> class is supplied.
   */
  public native function get header():String;

  /**
   <tt>true</tt> if the checkbox column is sortable (defaults to <tt>false</tt>).
   */
  public native function get sortable():Boolean;

  /**
   The default width in pixels of the checkbox column (defaults to <tt>20</tt>).
   */
  public native function get width():Number;

  /**
   *
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.CheckboxSelectionModel-method-processEvent Sencha Docs Ext JS 3.4
   */
  public native function processEvent():void;

}
}
    