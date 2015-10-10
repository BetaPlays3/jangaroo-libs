package ext.grid {
import ext.config.rowselectionmodel;
import ext.data.Record;

/**
 * Fires before a row is selected, return false to cancel the selection.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>
 The index to be selected
 *       </li>

 *       <li>
 *           <code>keepExisting:Boolean</code>
 False if other selections will be cleared
 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The record to be selected
 *       </li>

 * </ul>
 */
[Event(name="beforerowselect")]

/**
 * Fires when a row is deselected. To prevent deselection <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-lock">lock the selections</a>.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>

 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>

 *       </li>

 * </ul>
 */
[Event(name="rowdeselect")]

/**
 * Fires when a row is selected.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 *       <li>
 *           <code>rowIndex:Number</code>
 The selected index
 *       </li>

 *       <li>
 *           <code>r:ext.data.Record</code>
 The selected record
 *       </li>

 * </ul>
 */
[Event(name="rowselect")]

/**
 * Fires when the selection changes
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:SelectionModel</code>

 *       </li>

 * </ul>
 */
[Event(name="selectionchange")]


/**
 * The default SelectionModel used by <a href="Ext.grid.GridPanel.html">Ext.grid.GridPanel</a>. It supports multiple selections and keyboard selection/navigation. The objects stored as selections and returned by <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-getSelected">getSelected</a>, and <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-getSelections">getSelections</a> are the <a href="Ext.data.Record.html">Record</a>s which provide the data for the selected rows.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.rowselectionmodel
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel Sencha Docs Ext JS 3.4
 */
[Native]
public class RowSelectionModel extends AbstractSelectionModel {

  /**
   *
   *
   * @param config
   * @see ext.config.rowselectionmodel
   */
  public function RowSelectionModel(config:rowselectionmodel = null) {
    super();
  }

  /**
   <tt>false</tt> to turn off moving the editor to the next row down when the enter key is pressed or the next row up when shift + enter keys are pressed.
   */
  public native function get moveEditorOnEnter():Boolean;

  /**
   <tt>true</tt> to allow selection of only one row at a time (defaults to <tt>false</tt> allowing multiple selections)
   */
  public native function get singleSelect():Boolean;

  /**
   * Clears all selections if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is not locked</a>.
   *
   * @param fast <tt>true</tt> to bypass the conditional checks and events described in <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-deselectRow">deselectRow</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-clearSelections Sencha Docs Ext JS 3.4
   */
  public native function clearSelections(fast:Boolean = false):void;

  /**
   * Deselects a range of rows if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is not locked</a>. All rows in between startRow and endRow are also deselected.
   *
   * @param startRow The index of the first row in the range
   * @param endRow The index of the last row in the range
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-deselectRange Sencha Docs Ext JS 3.4
   */
  public native function deselectRange(startRow:Number, endRow:Number):void;

  /**
   * Deselects a row. Before deselecting a row, checks if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is locked</a>. If this check is satisfied the row will be deselected and followed up by firing the <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-rowdeselect">rowdeselect</a> and <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-selectionchange">selectionchange</a> events.
   *
   * @param row The index of the row to deselect
   * @param preventViewNotify Specify <tt>true</tt> to prevent notifying the view (disables updating the selected appearance)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-deselectRow Sencha Docs Ext JS 3.4
   */
  public native function deselectRow(row:Number, preventViewNotify:Boolean = false):void;

  /**
   * Calls the passed function with each selection. If the function returns <tt>false</tt>, iteration is stopped and this function returns <tt>false</tt>. Otherwise it returns <tt>true</tt>.
   *
   * @param fn The function to call upon each iteration. It is passed the selected <a href="Ext.data.Record.html">Record</a>.
   * @param scope The scope (<code>this</code> reference) in which the function is executed. Defaults to this RowSelectionModel.
   * @return true if all selections were iterated
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-each Sencha Docs Ext JS 3.4
   */
  public native function each(fn:Function, scope:Object = null):Boolean;

  /**
   * Gets the number of selected rows.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-getCount Sencha Docs Ext JS 3.4
   */
  public native function getCount():Number;

  /**
   * Returns the first selected record.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-getSelected Sencha Docs Ext JS 3.4
   */
  public native function getSelected():Record;

  /**
   * Returns the selected records
   *
   * @return Array of selected records
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-getSelections Sencha Docs Ext JS 3.4
   */
  public native function getSelections():Array;

  /**
   * Returns true if there is a next record to select
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-hasNext Sencha Docs Ext JS 3.4
   */
  public native function hasNext():Boolean;

  /**
   * Returns true if there is a previous record to select
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-hasPrevious Sencha Docs Ext JS 3.4
   */
  public native function hasPrevious():Boolean;

  /**
   * Returns <tt>true</tt> if there is a selection.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-hasSelection Sencha Docs Ext JS 3.4
   */
  public native function hasSelection():Boolean;

  /**
   * Returns <tt>true</tt> if the specified record id is selected.
   *
   * @param id The id of record to check
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-isIdSelected Sencha Docs Ext JS 3.4
   */
  public native function isIdSelected(id:String):Boolean;

  /**
   * Returns <tt>true</tt> if the specified row is selected.
   *
   * @param index The record or index of the record to check
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-isSelected Sencha Docs Ext JS 3.4
   */
  public native function isSelected(index:*):Boolean;

  /**
   * Selects all rows if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is not locked</a>.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectAll Sencha Docs Ext JS 3.4
   */
  public native function selectAll():void;

  /**
   * Selects the first row in the grid.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectFirstRow Sencha Docs Ext JS 3.4
   */
  public native function selectFirstRow():void;

  /**
   * Select the last row.
   *
   * @param keepExisting <tt>true</tt> to keep existing selections
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectLastRow Sencha Docs Ext JS 3.4
   */
  public native function selectLastRow(keepExisting:Boolean = false):void;

  /**
   * Selects the row immediately following the last selected row.
   *
   * @param keepExisting <tt>true</tt> to keep existing selections
   * @return <tt>true</tt> if there is a next row, else <tt>false</tt>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectNext Sencha Docs Ext JS 3.4
   */
  public native function selectNext(keepExisting:Boolean = false):Boolean;

  /**
   * Selects the row that precedes the last selected row.
   *
   * @param keepExisting <tt>true</tt> to keep existing selections
   * @return <tt>true</tt> if there is a previous row, else <tt>false</tt>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectPrevious Sencha Docs Ext JS 3.4
   */
  public native function selectPrevious(keepExisting:Boolean = false):Boolean;

  /**
   * Selects a range of rows if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is not locked</a>. All rows in between startRow and endRow are also selected.
   *
   * @param startRow The index of the first row in the range
   * @param endRow The index of the last row in the range
   * @param keepExisting True to retain existing selections
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectRange Sencha Docs Ext JS 3.4
   */
  public native function selectRange(startRow:Number, endRow:Number, keepExisting:Boolean = false):void;

  /**
   * Select records.
   *
   * @param records The records to select
   * @param keepExisting <tt>true</tt> to keep existing selections
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectRecords Sencha Docs Ext JS 3.4
   */
  public native function selectRecords(records:Array, keepExisting:Boolean = false):void;

  /**
   * Selects a row. Before selecting a row, checks if the selection model <a href="output/Ext.grid.AbstractSelectionModel.html#Ext.grid.AbstractSelectionModel-isLocked">is locked</a> and fires the <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-beforerowselect">beforerowselect</a> event. If these checks are satisfied the row will be selected and followed up by firing the <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-rowselect">rowselect</a> and <a href="output/Ext.grid.RowSelectionModel.html#Ext.grid.RowSelectionModel-selectionchange">selectionchange</a> events.
   *
   * @param row The index of the row to select
   * @param keepExisting <tt>true</tt> to keep existing selections
   * @param preventViewNotify Specify <tt>true</tt> to prevent notifying the view (disables updating the selected appearance)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectRow Sencha Docs Ext JS 3.4
   */
  public native function selectRow(row:Number, keepExisting:Boolean = false, preventViewNotify:Boolean = false):void;

  /**
   * Selects multiple rows.
   *
   * @param rows Array of the indexes of the row to select
   * @param keepExisting <tt>true</tt> to keep existing selections (defaults to <tt>false</tt>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.grid.RowSelectionModel-method-selectRows Sencha Docs Ext JS 3.4
   */
  public native function selectRows(rows:Array, keepExisting:Boolean = false):void;

}
}
    