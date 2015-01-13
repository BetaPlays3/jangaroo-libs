package ext.data {
import ext.util.MixedCollection;

import js.Element;

/**
 * Instances of this class encapsulate both Record <em>definition</em> information, and Record <em>value</em> information for use in <a href="Ext.data.Store.html">Ext.data.Store</a> objects, or any code which needs to access Records cached in an <a href="Ext.data.Store.html">Ext.data.Store</a> object.
 <p>Constructors for this class are generated by passing an Array of field definition objects to <a href="output/Ext.data.Record.html#Ext.data.Record-create">create</a>. Instances are usually only created by <a href="Ext.data.Reader.html">Ext.data.Reader</a> implementations when processing unformatted data objects.</p><p>Note that an instance of a Record class may only belong to one <a href="Ext.data.Store.html">Store</a> at a time. In order to copy data from one Store to another, use the <a href="output/Ext.data.Record.html#Ext.data.Record-copy">copy</a> method to create an exact copy of the Record, and insert the new instance into the other Store.</p><p>When serializing a Record for submission to the server, be aware that it contains many private properties, and also a reference to its owning Store which in turn holds references to its Records. This means that a whole Record may not be encoded using <a href="Ext.util.JSON.encode.html">Ext.util.JSON.encode</a>. Instead, use the <code><a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a></code> and <code><a href="output/Ext.data.Record.html#Ext.data.Record-id">id</a></code> properties.</p><p>Record objects generated by this constructor inherit all the methods of Ext.data.Record listed below.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", "data.Record")]
public class Record {

  /**
   * This constructor should not be used to create Record objects. Instead, use <a href="output/Ext.data.Record.html#Ext.data.Record-create">create</a> to generate a subclass of Ext.data.Record configured with information about its constituent fields.
   <p style="font-weight: bold">The generated constructor has the same signature as this constructor.</p>
   *
   * @param data An object, the properties of which provide values for the new Record's fields. If not specified the <code><a href="output/Ext.data.Field.html#Ext.data.Field-defaultValue">defaultValue</a></code> for each field will be assigned.
   * @param id The id of the Record. The id is used by the <a href="Ext.data.Store.html">Ext.data.Store</a> object which owns the Record to index its collection of Records (therefore this id should be unique within each store). If an <code>id</code> is not specified a <b><code><a href="output/Ext.data.Record.html#Ext.data.Record-phantom">phantom</a></code></b> Record will be created with an <a href="output/Ext.data.Record.html#Ext.data.Record-Record.id">automatically generated id</a>.
   */
  public function Record(data:Object = null, id:Object = null) {
    super();
  }

  /**
   Record event type 'commit'.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-COMMIT Sencha Docs Ext JS 3.4
   */
  public static const COMMIT:String = "commit";

  /**
   Record event type 'edit'.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-EDIT Sencha Docs Ext JS 3.4
   */
  public static const EDIT:String = "edit";

  /**
   Record event type 'reject'.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-REJECT Sencha Docs Ext JS 3.4
   */
  public static const REJECT:String = "reject";

  /**
   An object hash representing the data for this Record. Every field name in the Record definition is represented by a property of that name in this object. Note that unless you specified a field with <a href="output/Ext.data.Field.html#Ext.data.Field-name">name</a> "id" in the Record definition, this will <b>not</b> contain an <tt>id</tt> property.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-data Sencha Docs Ext JS 3.4
   */
  public native function get data():Object;

  /**
   * @private
   */
  public native function set data(value:Object):void;

  /**
   Readonly flag - true if this Record has been modified.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-dirty Sencha Docs Ext JS 3.4
   */
  public native function get dirty():Boolean;

  /**
   * @private
   */
  public native function set dirty(value:Boolean):void;

  /**
   This property is stored in the Record definition's <u>prototype</u>
   A MixedCollection containing the defined <a href="Ext.data.Field.html">Field</a>s for this Record.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-fields Sencha Docs Ext JS 3.4
   */
  public native function get fields():MixedCollection;

  /**
   The unique ID of the Record <a href="output/Ext.data.Record.html#Ext.data.Record-Record">as specified at construction time</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-id Sencha Docs Ext JS 3.4
   */
  public native function get id():Object;

  /**
   * @private
   */
  public native function set id(value:Object):void;

  /**
   <b>Only present if this Record was created by an <a href="Ext.data.ArrayReader.html">ArrayReader</a> or a <a href="Ext.data.JsonReader.html">JsonReader</a></b>.
   <p>The Array or object which was the source of the data for this Record.</p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-json Sencha Docs Ext JS 3.4
   */
  public native function get json():*;

  /**
   * @private
   */
  public native function set json(value:*):void;

  /**
   This object contains a key and value storing the original values of all modified fields or is null if no fields have been modified.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-modified Sencha Docs Ext JS 3.4
   */
  public native function get modified():Object;

  /**
   * @private
   */
  public native function set modified(value:Object):void;

  /**
   <b>Only present if this Record was created by an <a href="Ext.data.XmlReader.html">XmlReader</a></b>.
   <p>The XML element which was the source of the data for this Record.</p>
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-node Sencha Docs Ext JS 3.4
   */
  public native function get node():Element;

  /**
   * @private
   */
  public native function set node(value:Element):void;

  /**
   <tt>true</tt> when the record does not yet exist in a server-side database (see <a href="output/Ext.data.Record.html#Ext.data.Record-markDirty">markDirty</a>). Any record which has a real database pk set as its id property is NOT a phantom -- it's real.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-phantom Sencha Docs Ext JS 3.4
   */
  public native function get phantom():Boolean;

  /**
   * @private
   */
  public native function set phantom(value:Boolean):void;

  /**
   The <a href="Ext.data.Store.html">Ext.data.Store</a> to which this Record belongs.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-property-store Sencha Docs Ext JS 3.4
   */
  public native function get store():Store;

  /**
   * @private
   */
  public native function set store(value:Store):void;

  /**
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-afterEdit Sencha Docs Ext JS 3.4
   */
  protected native function afterEdit():void;

  /**
   * Begin an edit. While in edit mode, no events (e.g.. the <code>update</code> event) are relayed to the containing store. See also: <code><a href="output/Ext.data.Record.html#Ext.data.Record-endEdit">endEdit</a></code> and <code><a href="output/Ext.data.Record.html#Ext.data.Record-cancelEdit">cancelEdit</a></code>.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-beginEdit Sencha Docs Ext JS 3.4
   */
  public native function beginEdit():void;

  /**
   * Cancels all changes made in the current edit operation.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-cancelEdit Sencha Docs Ext JS 3.4
   */
  public native function cancelEdit():void;

  /**
   * Usually called by the <a href="Ext.data.Store.html">Ext.data.Store</a> which owns the Record. Commits all changes made to the Record since either creation, or the last commit operation. <p>Developers should subscribe to the <a href="output/Ext.data.Store.html#Ext.data.Store-update">Ext.data.Store.update</a> event to have their code notified of commit operations.</p>
   *
   * @param silent True to skip notification of the owning store of the change (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-commit Sencha Docs Ext JS 3.4
   */
  public native function commit(silent:Boolean = false):void;

  /**
   * Creates a copy (clone) of this Record.
   *
   * @param id A new Record id, defaults to the id of the record being copied. See <code><a href="output/Ext.data.Record.html#Ext.data.Record-id">id</a></code>. To generate a phantom record with a new id use:<pre><code>var rec = record.copy(); // clone the record
   Ext.data.Record.id(rec); // automatically generate a unique sequential id
   </code></pre>
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-copy Sencha Docs Ext JS 3.4
   */
  public native function copy(id:String = null):Record;

  /**
   * Generate a constructor for a specific Record layout.
   *
   * @param o An Array of <b><a href="Ext.data.Field.html">Field</a></b> definition objects. The constructor generated by this method may be used to create new Record instances. The data object must contain properties named after the <a href="Ext.data.Field.html">field</a> <b><tt><a href="output/Ext.data.Field.html#Ext.data.Field-name">Ext.data.Field.name</a>s</tt></b>. Example usage:<pre><code>// create a Record constructor from a description of the fields
   var TopicRecord = Ext.data.Record.create([ // creates a subclass of Ext.data.Record
   {<a href="output/Ext.data.Field.html#Ext.data.Field-name">name</a>: 'title', <a href="output/Ext.data.Field.html#Ext.data.Field-mapping">mapping</a>: 'topic_title'},
   {name: 'author', mapping: 'username', allowBlank: false},
   {name: 'totalPosts', mapping: 'topic_replies', type: 'int'},
   {name: 'lastPost', mapping: 'post_time', type: 'date'},
   {name: 'lastPoster', mapping: 'user2'},
   {name: 'excerpt', mapping: 'post_text', allowBlank: false},
   // In the simplest case, if no properties other than <tt>name</tt> are required,
   // a field definition may consist of just a String for the field name.
   'signature'
   ]);

   // create Record instance
   var myNewRecord = new TopicRecord(
   {
   title: 'Do my job please',
   author: 'noobie',
   totalPosts: 1,
   lastPost: new Date(),
   lastPoster: 'Animal',
   excerpt: 'No way dude!',
   signature: ''
   },
   id // optionally specify the id of the record otherwise <a href="output/Ext.data.Record.html#Ext.data.Record-Record.id">one is auto-assigned</a>
   );
   myStore.<a href="output/Ext.data.Store.html#Ext.data.Store-add">add</a>(myNewRecord);
   </code></pre>
   * @return A constructor which is used to create new Records according to the definition. The constructor has the same signature as <a href="output/Ext.data.Record.html#Ext.data.Record-Record">Record</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-create Sencha Docs Ext JS 3.4
   */
  public static native function create(o:Array):Function;

  /**
   * End an edit. If any data was modified, the containing store is notified (ie, the store's <code>update</code> event will fire).
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-endEdit Sencha Docs Ext JS 3.4
   */
  public native function endEdit():void;

  /**
   * Get the value of the <a href="output/Ext.data.Field.html#Ext.data.Field-name">named field</a>.
   *
   * @param name The <a href="output/Ext.data.Field.html#Ext.data.Field-name">name of the field</a> to get the value of.
   * @return The value of the field.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-get Sencha Docs Ext JS 3.4
   */
  public native function get(name:String):Object;

  /**
   * Gets a hash of only the fields that have been modified since this Record was created or committed.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-getChanges Sencha Docs Ext JS 3.4
   */
  public native function getChanges():Object;

  /**
   * Generates a sequential id. This method is typically called when a record is <a href="output/Ext.data.Record.html#Ext.data.Record-create">create</a>d and <a href="output/Ext.data.Record.html#Ext.data.Record-Record">no id has been specified</a>. The returned id takes the form: <tt>{PREFIX}-{AUTO_ID}</tt>.<div class="mdetail-params"><ul><li><b><tt>PREFIX</tt></b> : String<p class="sub-desc"><tt>Ext.data.Record.PREFIX</tt> (defaults to <tt>'ext-record'</tt>)</p></li><li><b><tt>AUTO_ID</tt></b> : String<p class="sub-desc"><tt>Ext.data.Record.AUTO_ID</tt> (defaults to <tt>1</tt> initially)</p></li></ul></div>
   *
   * @param rec The record being created. The record does not exist, it's a <a href="output/Ext.data.Record.html#Ext.data.Record-phantom">phantom</a>.
   * @return auto-generated string id, <tt>"ext-record-i++'</tt>;
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-id Sencha Docs Ext JS 3.4
   */
  public static native function id(rec:Record):String;

  /**
   * Returns <tt>true</tt> if the passed field name has been <code><a href="output/Ext.data.Record.html#Ext.data.Record-modified">modified</a></code> since the load or last commit.
   *
   * @param fieldName <a href="Ext.data.Field.{&#64;link.html">Ext.data.Field#name</a>
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-isModified Sencha Docs Ext JS 3.4
   */
  public native function isModified(fieldName:String):Boolean;

  /**
   * By default returns <tt>false</tt> if any <a href="Ext.data.Field.html">field</a> within the record configured with <tt><a href="output/Ext.data.Field.html#Ext.data.Field-allowBlank">Ext.data.Field.allowBlank</a> = false</tt> returns <tt>true</tt> from an <a href="Ext.html">Ext</a>.<a href="output/Ext.html#Ext-isEmpty">isempty</a> test.
   *
   * @return
          * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-isValid Sencha Docs Ext JS 3.4
   */
  public native function isValid():Boolean;

  /**
   *
   *
   * @param store
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-join Sencha Docs Ext JS 3.4
   */
  protected native function join(store:Store):void;

  /**
   * Marks this <b>Record</b> as <code><a href="output/Ext.data.Record.html#Ext.data.Record-dirty">dirty</a></code>. This method is used internally when adding <code><a href="output/Ext.data.Record.html#Ext.data.Record-phantom">phantom</a></code> records to a <a href="output/Ext.data.Store.html#Ext.data.Store-writer">writer enabled store</a>.
   <br/><p>Marking a record <code><a href="output/Ext.data.Record.html#Ext.data.Record-dirty">dirty</a></code> causes the phantom to be returned by <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">Ext.data.Store.getModifiedRecords</a> where it will have a create action composed for it during <a href="output/Ext.data.Store.html#Ext.data.Store-save">store save</a> operations.</p>
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-markDirty Sencha Docs Ext JS 3.4
   */
  public native function markDirty():void;

  /**
   * Usually called by the <a href="Ext.data.Store.html">Ext.data.Store</a> which owns the Record. Rejects all changes made to the Record since either creation, or the last commit operation. Modified fields are reverted to their original values. <p>Developers should subscribe to the <a href="output/Ext.data.Store.html#Ext.data.Store-update">Ext.data.Store.update</a> event to have their code notified of reject operations.</p>
   *
   * @param silent True to skip notification of the owning store of the change (defaults to false)
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-reject Sencha Docs Ext JS 3.4
   */
  public native function reject(silent:Boolean = false):void;

  /**
   * Set the <a href="output/Ext.data.Field.html#Ext.data.Field-name">named field</a> to the specified value. For example: <pre><code>// record has a field named 'firstname'
   var Employee = Ext.data.Record.<a href="output/Ext.data.Record.html#Ext.data.Record-create">create</a>([
   {name: 'firstname'},
   ...
   ]);

   // update the 2nd record in the store:
   var rec = myStore.<a href="output/Ext.data.Store.html#Ext.data.Store-getAt">getAt</a>(1);

   // set the value (shows dirty flag):
   rec.set('firstname', 'Betty');

   // commit the change (removes dirty flag):
   rec.<a href="output/Ext.data.Record.html#Ext.data.Record-commit">commit</a>();

   // update the record in the store, bypass setting dirty flag,
   // and do not store the change in the <a href="output/Ext.data.Store.html#Ext.data.Store-getModifiedRecords">modified records</a>
   rec.<a href="output/Ext.data.Record.html#Ext.data.Record-data">data</a>['firstname'] = 'Wilma'; // updates record, but not the view
   rec.<a href="output/Ext.data.Record.html#Ext.data.Record-commit">commit</a>(); // updates the view
   </code></pre><b>Notes</b>:<div class="mdetail-params"><ul><li>If the store has a writer and <code>autoSave=true</code>, each set() will execute an XHR to the server.</li><li>Use <code><a href="output/Ext.data.Record.html#Ext.data.Record-beginEdit">beginEdit</a></code> to prevent the store's <code>update</code> event firing while using set().</li><li>Use <code><a href="output/Ext.data.Record.html#Ext.data.Record-endEdit">endEdit</a></code> to have the store's <code>update</code> event fire.</li></ul></div>
   *
   * @param name The <a href="output/Ext.data.Field.html#Ext.data.Field-name">name of the field</a> to set.
   * @param value The value to set the field to.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.data.Record-method-set Sencha Docs Ext JS 3.4
   */
  public native function set(name:String, value:*):void;

}
}
    