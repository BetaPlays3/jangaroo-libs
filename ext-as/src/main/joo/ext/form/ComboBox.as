package ext.form {
import ext.DataView;
import ext.KeyNav;
import ext.config.combo;
import ext.data.Store;

/**
 * Fires before all queries are processed. Return false to cancel the query or set the queryEvent's cancel property to true.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>queryEvent:Object</code>
 An object that has these properties:<ul><li><code>combo</code> : Ext.form.ComboBox <div class="sub-desc">This combo box</div></li><li><code>query</code> : String <div class="sub-desc">The query</div></li><li><code>forceAll</code> : Boolean <div class="sub-desc">True to force "all" query</div></li><li><code>cancel</code> : Boolean <div class="sub-desc">Set to true to cancel the query</div></li></ul>
 *       </li>

 * </ul>
 */
[Event(name="beforequery")]

/**
 * Fires before a list item is selected. Return false to cancel the selection.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>combo:ext.form.ComboBox</code>
 This combo box
 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The data record returned from the underlying store
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the selected item in the dropdown list
 *       </li>

 * </ul>
 */
[Event(name="beforeselect")]

/**
 * Fires when the dropdown list is collapsed
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>combo:ext.form.ComboBox</code>
 This combo box
 *       </li>

 * </ul>
 */
[Event(name="collapse")]

/**
 * Fires when the dropdown list is expanded
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>combo:ext.form.ComboBox</code>
 This combo box
 *       </li>

 * </ul>
 */
[Event(name="expand")]

/**
 * Fires when a list item is selected
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>combo:ext.form.ComboBox</code>
 This combo box
 *       </li>

 *       <li>
 *           <code>record:ext.data.Record</code>
 The data record returned from the underlying store
 *       </li>

 *       <li>
 *           <code>index:Number</code>
 The index of the selected item in the dropdown list
 *       </li>

 * </ul>
 */
[Event(name="select")]


/**
 * A combobox control with support for autocomplete, remote-loading, paging and many other features.
 <p>A ComboBox works in a similar manner to a traditional HTML &lt;select&gt; field. The difference is that to submit the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, you must specify a <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a> to create a hidden input field to hold the value of the valueField. The <i><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a></i> is shown in the text field which is named according to the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-name">name</a>.</p><p style="font-weight: bold"><u>Events</u></p><p>To do something when something in ComboBox is selected, configure the select event:</p><pre><code>var cb = new Ext.form.ComboBox({
 // all of your config options
 listeners:{
 scope: yourScope,
 'select': yourFunction
 }
 });

 // Alternatively, you can assign events after the object is created:
 var cb = new Ext.form.ComboBox(yourOptions);
 cb.on('select', yourFunction, yourScope);
 </code></pre><br/><br/> <p style="font-weight: bold"><u>ComboBox in Grid</u></p><p>If using a ComboBox in an <a href="Ext.grid.EditorGridPanel.html">Editor Grid</a> a <a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a> will be needed to show the displayField when the editor is not active. Set up the renderer manually, or implement a reusable render, for example:</p><pre><code>// create reusable renderer
 Ext.util.Format.comboRenderer = function(combo){
 return function(value){
 var record = combo.findRecord(combo.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, value);
 return record ? record.get(combo.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a>) : combo.<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueNotFoundText">valueNotFoundText</a>;
 }
 }

 // create the combo instance
 var combo = new Ext.form.ComboBox({
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAhead">typeAhead</a>: true,
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-triggerAction">triggerAction</a>: 'all',
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lazyRender">lazyRender</a>:true,
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a>: 'local',
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">store</a>: new Ext.data.ArrayStore({
 id: 0,
 fields: [
 'myId',
 'displayText'
 ],
 data: [[1, 'item1'], [2, 'item2']]
 }),
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>: 'myId',
 <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a>: 'displayText'
 });

 // snippet of column model used within grid
 var cm = new Ext.grid.ColumnModel([{
 ...
 },{
 header: "Some Header",
 dataIndex: 'whatever',
 width: 130,
 editor: combo, // specify reference to combo instance
 renderer: Ext.util.Format.comboRenderer(combo) // pass combo instance to reusable renderer
 },
 ...
 ]);
 </code></pre><br/><br/> <p style="font-weight: bold"><u>Filtering</u></p><p>A ComboBox <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">uses filtering itself</a>, for information about filtering the ComboBox store manually see <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lastQuery">lastQuery</a></tt>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'combo' / the EXML element &lt;combo>.</p>
 * @see ext.config.combo
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.form.ComboBox")]
public class ComboBox extends TriggerField {

  /**
   * Create a new ComboBox.
   *
   * @param config Configuration options
   * @see ext.config.combo
   */
  public function ComboBox(config:combo) {
    super(null);
  }

  /**
   A <a href="Ext.KeyNav.html">KeyNav</a> object which handles navigation keys for this ComboBox. This performs actions based on keystrokes typed when the input field is focused.
   <p><b>After the ComboBox has been rendered</b>, you may override existing navigation key functionality, or add your own based upon key names as specified in the <a href="Ext.KeyNav.html">KeyNav</a> class.</p><p>The function is executed in the scope (<code>this</code> reference of the ComboBox. Example:</p><pre><code>myCombo.keyNav.esc = function(e) {  // Override ESC handling function
   this.collapse();                // Standard behaviour of Ext's ComboBox.
   this.setValue(this.startValue); // We reset to starting value on ESC
   };
   myCombo.keyNav.tab = function() {   // Override TAB handling function
   this.onViewClick(false);        // Select the currently highlighted row
   };
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-property-keyNav Sencha Docs Ext JS 3.4
   */
  public native function get keyNav():KeyNav;

  /**
   * @private
   */
  public native function set keyNav(value:KeyNav):void;

  /**
   The value of the match string used to filter the store. Delete this property to force a requery. Example use: <pre><code>var combo = new Ext.form.ComboBox({
   ...
   mode: 'remote',
   ...
   listeners: {
   // delete the previous query in the beforequery event or set
   // combo.lastQuery = null (this will reload the store the next time it expands)
   beforequery: function(qe){
   delete qe.combo.lastQuery;
   }
   }
   });
   </code></pre>To make sure the filter in the store is not cleared the first time the ComboBox trigger is used configure the combo with <tt>lastQuery=''</tt>. Example use: <pre><code>var combo = new Ext.form.ComboBox({
   ...
   mode: 'local',
   triggerAction: 'all',
   lastQuery: ''
   });
   </code></pre>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-property-lastQuery Sencha Docs Ext JS 3.4
   */
  public native function get lastQuery():String;

  /**
   * @private
   */
  public native function set lastQuery(value:String):void;

  /**
   The index of the selected record in the store. Use <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-select">select</a> to change.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-property-selectedIndex Sencha Docs Ext JS 3.4
   */
  public native function get selectedIndex():int;

  /**
   The <a href="Ext.DataView.html">DataView</a> used to display the ComboBox's options.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-property-view Sencha Docs Ext JS 3.4
   */
  public native function get view():DataView;

  /**
   * @private
   */
  public native function set view(value:DataView):void;

  /**
   The text query to send to the server to return all records for the list with no filtering (defaults to '')
   */
  public native function get allQuery():String;

  /**
   A <a href="Ext.DomHelper.html">DomHelper</a> element spec, or <tt>true</tt> for a default element spec. Used to create the <a href="output/Ext.Component.html#Ext.Component-getEl">Element</a> which will encapsulate this Component. See <tt><a href="output/Ext.Component.html#Ext.Component-autoEl">autoEl</a></tt> for details. Defaults to:
   <pre><code>{tag: "input", type: "text", size: "24", autocomplete: "off"}</code></pre>
   */
  override public native function get autoCreate():*;

  /**
   <tt>true</tt> to select the first result gathered by the data store (defaults to <tt>true</tt>). A false value would require a manual selection from the dropdown list to set the components value unless the value of (<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAheadDelay">typeAheadDelay</a>) were true.
   */
  public native function get autoSelect():Boolean;

  /**
   <tt>true</tt> to clear any filters on the store (when in local mode) when reset is called (defaults to <tt>true</tt>)
   */
  public native function get clearFilterOnReset():Boolean;

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data field name</a> to bind to this ComboBox (defaults to undefined if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>'field1'</tt> if <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-transform">transforming a select</a> or if the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">field name is autogenerated based on the store configuration</a>). <p>See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a></tt>.</p><p><b>Note</b>: if using a ComboBox in an <a href="Ext.grid.EditorGridPanel.html">Editor Grid</a> a <a href="output/Ext.grid.Column.html#Ext.grid.Column-renderer">renderer</a> will be needed to show the displayField when the editor is not active.</p>
   */
  public native function get displayField():String;

  /**
   <tt>true</tt> to restrict the selected value to one of the values in the list, <tt>false</tt> to allow the user to set arbitrary text into the field (defaults to <tt>false</tt>)
   */
  public native function get forceSelection():Boolean;

  /**
   The height in pixels of the dropdown list resize handle if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-resizable">resizable</a> = true</tt> (defaults to <tt>8</tt>)
   */
  public native function get handleHeight():Number;

  /**
   If <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a></tt> is specified, <tt>hiddenId</tt> can also be provided to give the hidden field a unique id. The <tt>hiddenId</tt> and combo <a href="output/Ext.Component.html#Ext.Component-id">id</a> should be different, since no two DOM nodes should share the same id.
   */
  public native function get hiddenId():String;

  /**
   If specified, a hidden form field with this name is dynamically generated to store the field's data value (defaults to the underlying DOM element's name). Required for the combo's value to automatically post during a form submission. See also <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>.
   */
  public native function get hiddenName():String;

  /**
   Sets the initial value of the hidden field if <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a> is specified to contain the selected <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-valueField">valueField</a>, from the Store. Defaults to the configured <tt><a href="output/Ext.form.Field.html#Ext.form.Field-value">value</a></tt>.
   */
  public native function get hiddenValue():String;

  /**
   A simple CSS selector (e.g. div.some-class or span:first-child) that will be used to determine what nodes the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-view">Ext.DataView</a> which handles the dropdown display will be working with.
   <p><b>Note</b>: this setting is <b>required</b> if a custom XTemplate has been specified in <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-tpl">tpl</a> which assigns a class other than</p><pre>'x-combo-list-item'</pre>to dropdown list items
   */
  public native function get itemSelector():String;

  /**
   <tt>true</tt> to not initialize the list for this combo until the field is focused (defaults to <tt>true</tt>)
   */
  public native function get lazyInit():Boolean;

  /**
   <tt>true</tt> to prevent the ComboBox from rendering until requested (should always be used when rendering into an <a href="Ext.Editor.html">Ext.Editor</a> (e.g. <a href="Ext.grid.EditorGridPanel.html">Grids</a>), defaults to <tt>false</tt>).
   */
  public native function get lazyRender():Boolean;

  /**
   A valid anchor position value. See <tt><a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a></tt> for details on supported anchor positions and offsets. To specify x/y offsets as well, this value may be specified as an Array of <tt><a href="output/Ext.Element.html#Ext.Element-alignTo">Ext.Element.alignTo</a></tt> method arguments.<br/><br/> <pre><code>[ 'tl-bl?', [6,0] ]</code></pre>(defaults to <tt>'tl-bl?'</tt>)
   */
  public native function get listAlign():*;

  /**
   The CSS class to add to the predefined <tt>'x-combo-list'</tt> class applied the dropdown list element (defaults to '').
   */
  public native function get listClass():String;

  /**
   The empty text to display in the data view if no items are found. (defaults to '')
   */
  public native function get listEmptyText():String;

  /**
   The width (used as a parameter to <a href="output/Ext.Element.html#Ext.Element-setWidth">Ext.Element.setWidth</a>) of the dropdown list (defaults to the width of the ComboBox field). See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-minListWidth">minListWidth</a></tt>
   */
  public native function get listWidth():Number;

  /**
   The text to display in the dropdown list while data is loading. Only applies when <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> (defaults to <tt>'Loading...'</tt>)
   */
  public native function get loadingText():String;

  /**
   The maximum height in pixels of the dropdown list before scrollbars are shown (defaults to <tt>300</tt>)
   */
  public native function get maxHeight():Number;

  /**
   The minimum number of characters the user must type before autocomplete and <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAhead">typeAhead</a> activate (defaults to <tt>4</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>0</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'local'</tt>, does not apply if <tt><a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> = false</tt>).
   */
  public native function get minChars():Number;

  /**
   The minimum height in pixels of the dropdown list when the list is constrained by its distance to the viewport edges (defaults to <tt>90</tt>)
   */
  public native function get minHeight():Number;

  /**
   The minimum width of the dropdown list in pixels (defaults to <tt>70</tt>, will be ignored if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-listWidth">listWidth</a></tt> has a higher value)
   */
  public native function get minListWidth():Number;

  /**
   Acceptable values are: <div class="mdetail-params"><ul><li><b><tt>'remote'</tt></b> : <b>Default</b> <p class="sub-desc">Automatically loads the <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">store</a></tt> the <b>first</b> time the trigger is clicked. If you do not want the store to be automatically loaded the first time the trigger is clicked, set to <tt>'local'</tt> and manually load the store. To force a requery of the store <b>every</b> time the trigger is clicked see <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lastQuery">lastQuery</a></tt>.</p></li><li><b><tt>'local'</tt></b> : <p class="sub-desc">ComboBox loads local data</p><pre><code>var combo = new Ext.form.ComboBox({
   renderTo: document.body,
   mode: 'local',
   store: new Ext.data.ArrayStore({
   id: 0,
   fields: [
   'myId',  // numeric value is the key
   'displayText'
   ],
   data: [[1, 'item1'], [2, 'item2']]  // data is local
   }),
   valueField: 'myId',
   displayField: 'displayText',
   triggerAction: 'all'
   });
   </code></pre></li></ul></div>
   */
  public native function get mode():String;

  /**
   If greater than <tt>0</tt>, a <a href="Ext.PagingToolbar.html">Ext.PagingToolbar</a> is displayed in the footer of the dropdown list and the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">filter queries</a> will execute with page start and <a href="output/Ext.PagingToolbar.html#Ext.PagingToolbar-pageSize">limit</a> parameters. Only applies when <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> (defaults to <tt>0</tt>).
   */
  public native function get pageSize():Number;

  /**
   The length of time in milliseconds to delay between the start of typing and sending the query to filter the dropdown list (defaults to <tt>500</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>10</tt> if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'local'</tt>)
   */
  public native function get queryDelay():Number;

  /**
   Name of the query (<a href="output/Ext.data.Store.html#Ext.data.Store-baseParam">baseParam</a> name for the store) as it will be passed on the querystring (defaults to <tt>'query'</tt>)
   */
  public native function get queryParam():String;

  /**
   <tt>true</tt> to add a resize handle to the bottom of the dropdown list (creates an <a href="Ext.Resizable.html">Ext.Resizable</a> with 'se' <a href="output/Ext.Resizable.html#Ext.Resizable-pinned">pinned</a> handles). Defaults to <tt>false</tt>.
   */
  public native function get resizable():Boolean;

  /**
   <tt>true</tt> to select any existing text in the field immediately on focus. Only applies when <tt><a href="output/Ext.form.TriggerField.html#Ext.form.TriggerField-editable">editable</a> = true</tt> (defaults to <tt>false</tt>).
   */
  override public native function get selectOnFocus():Boolean;

  /**
   CSS class to apply to the selected item in the dropdown list (defaults to <tt>'x-combo-selected'</tt>)
   */
  public native function get selectedClass():String;

  /**
   <tt>true</tt> or <tt>"sides"</tt> for the default effect, <tt>"frame"</tt> for 4-way shadow, and <tt>"drop"</tt> for bottom-right
   */
  public native function get shadow():*;

  /**
   False to clear the name attribute on the field so that it is not submitted during a form post. If a hiddenName is specified, setting this to true will cause both the hidden field and the element to be submitted. Defaults to <tt>undefined</tt>.
   */
  override public native function get submitValue():Boolean;

  /**
   If supplied, a header element is created containing this text and added into the top of the dropdown list (defaults to undefined, with no header element)
   */
  public native function get title():String;

  /**
   The id, DOM node or element of an existing HTML SELECT to convert to a ComboBox. Note that if you specify this and the combo is going to be in an <a href="Ext.form.BasicForm.html">Ext.form.BasicForm</a> or <a href="Ext.form.FormPanel.html">Ext.form.FormPanel</a>, you must also set <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-lazyRender">lazyRender</a> = true</tt>.
   */
  public native function get transform():*;

  /**
   The action to execute when the trigger is clicked. <div class="mdetail-params"><ul><li><b><tt>'query'</tt></b> : <b>Default</b> <p class="sub-desc"><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">run the query</a> using the <a href="output/Ext.form.Field.html#Ext.form.Field-getRawValue">raw value</a>.</p></li><li><b><tt>'all'</tt></b> : <p class="sub-desc"><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-doQuery">run the query</a> specified by the <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-allQuery">allQuery</a></tt> config option</p></li></ul></div><p>See also <code><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-queryParam">queryParam</a></code>.</p>
   */
  public native function get triggerAction():String;

  /**
   An additional CSS class used to style the trigger button. The trigger will always get the class <tt>'x-form-trigger'</tt> and <tt>triggerClass</tt> will be <b>appended</b> if specified (defaults to <tt>'x-form-arrow-trigger'</tt> which displays a downward arrow icon).
   */
  override public native function get triggerClass():String;

  /**
   <tt>true</tt> to populate and autoselect the remainder of the text being typed after a configurable delay (<a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAheadDelay">typeAheadDelay</a>) if it matches a known value (defaults to <tt>false</tt>)
   */
  public native function get typeAhead():Boolean;

  /**
   The length of time in milliseconds to wait until the typeahead text is displayed if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-typeAhead">typeAhead</a> = true</tt> (defaults to <tt>250</tt>)
   */
  public native function get typeAheadDelay():Number;

  /**
   The underlying <a href="output/Ext.data.Field.html#Ext.data.Field-name">data value name</a> to bind to this ComboBox (defaults to undefined if <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-mode">mode</a> = 'remote'</tt> or <tt>'field2'</tt> if <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-transform">transforming a select</a> or if the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-store">field name is autogenerated based on the store configuration</a>). <p><b>Note</b>: use of a <tt>valueField</tt> requires the user to make a selection in order for a value to be mapped. See also <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenName">hiddenName</a></tt>, <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-hiddenValue">hiddenValue</a></tt>, and <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-displayField">displayField</a></tt>.</p>
   */
  public native function get valueField():String;

  /**
   When using a name/value combo, if the value passed to setValue is not found in the store, valueNotFoundText will be displayed as the field text if defined (defaults to undefined). If this default text is used, it means there is no value set and no validation will occur on this field.
   */
  public native function get valueNotFoundText():String;

  /**
   * Clears any text/value currently set in the field
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-clearValue Sencha Docs Ext JS 3.4
   */
  public native function clearValue():void;

  /**
   * Hides the dropdown list if it is currently expanded. Fires the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-collapse">collapse</a> event on completion.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-collapse Sencha Docs Ext JS 3.4
   */
  public native function collapse():void;

  /**
   * Execute a query to filter the dropdown list. Fires the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-beforequery">beforequery</a> event prior to performing the query allowing the query action to be canceled if needed.
   *
   * @param query The SQL query to execute
   * @param forceAll <tt>true</tt> to force the query to execute even if there are currently fewer characters in the field than the minimum specified by the <tt><a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-minChars">minChars</a></tt> config option. It also clears any filter previously saved in the current store (defaults to <tt>false</tt>)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-doQuery Sencha Docs Ext JS 3.4
   */
  public native function doQuery(query:String, forceAll:Boolean):void;

  /**
   * Expands the dropdown list if it is currently hidden. Fires the <a href="output/Ext.form.ComboBox.html#Ext.form.ComboBox-expand">expand</a> event on completion.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-expand Sencha Docs Ext JS 3.4
   */
  public native function expand():void;

  /**
   * Returns the element used to house this ComboBox's pop-up list. Defaults to the document body.
   A custom implementation may be provided as a configuration option if the floating list needs to be rendered to a different Element. An example might be rendering the list inside a Menu so that clicking the list does not hide the Menu:<pre><code>var store = new Ext.data.ArrayStore({
   autoDestroy: true,
   fields: ['initials', 'fullname'],
   data : [
   ['FF', 'Fred Flintstone'],
   ['BR', 'Barney Rubble']
   ]
   });

   var combo = new Ext.form.ComboBox({
   store: store,
   displayField: 'fullname',
   emptyText: 'Select a name...',
   forceSelection: true,
   getListParent: function() {
   return this.el.up('.x-menu');
   },
   iconCls: 'no-icon', //use iconCls if placing within menu to shift to right side of menu
   mode: 'local',
   selectOnFocus: true,
   triggerAction: 'all',
   typeAhead: true,
   width: 135
   });

   var menu = new Ext.menu.Menu({
   id: 'mainMenu',
   items: [
   combo // A Field in a Menu
   ]
   });
   </code></pre>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-getListParent Sencha Docs Ext JS 3.4
   */
  public native function getListParent():void;

  /**
   * Returns the store associated with this combo.
   *
   * @return The store
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-getStore Sencha Docs Ext JS 3.4
   */
  public native function getStore():Store;

  /**
   * Returns the currently selected field value or empty string if no value is set.
   *
   * @return value The selected value
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-getValue Sencha Docs Ext JS 3.4
   */
  override public native function getValue():*;

  /**
   * Returns true if the dropdown list is expanded, else false.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-isExpanded Sencha Docs Ext JS 3.4
   */
  public native function isExpanded():void;

  /**
   * Select an item in the dropdown list by its numeric index in the list. This function does NOT cause the select event to fire. The store must be loaded and the list expanded for this function to work, otherwise use setValue.
   *
   * @param index The zero-based index of the list item to select
   * @param scrollIntoView False to prevent the dropdown list from autoscrolling to display the selected item if it is not currently in view (defaults to true)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-select Sencha Docs Ext JS 3.4
   */
  public native function select(index:Number, scrollIntoView:Boolean):void;

  /**
   * Select an item in the dropdown list by its data value. This function does NOT cause the select event to fire. The store must be loaded and the list expanded for this function to work, otherwise use setValue.
   *
   * @param value The data value of the item to select
   * @param scrollIntoView False to prevent the dropdown list from autoscrolling to display the selected item if it is not currently in view (defaults to true)
   * @return True if the value matched an item in the list, else false
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-selectByValue Sencha Docs Ext JS 3.4
   */
  public native function selectByValue(value:String, scrollIntoView:Boolean):Boolean;

  /**
   * Sets the specified value into the field. If the value finds a match, the corresponding record text will be displayed in the field. If the value does not match the data value of an existing item, and the valueNotFoundText config option is defined, it will be displayed as the default field text. Otherwise the field will be blank (although the value will still be set).
   *
   * @param value The value to set
   * @param flag a boolean flag used by some subclasses
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.ComboBox-method-setValue Sencha Docs Ext JS 3.4
   */
  override public native function setValue(value:*, flag:Boolean = false):Field;

}
}
    