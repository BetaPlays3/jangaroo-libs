package ext.dd {

import ext.IEventObject;

import js.HTMLElement;

/**
 * Defines the interface and base operation of items that that can be dragged or can be drop targets. It was designed to be extended, overriding the event handlers for startDrag, onDrag, onDragOver and onDragOut. Up to three html elements can be associated with a DragDrop instance: <ul><li>linked element: the element that is passed into the constructor. This is the element which defines the boundaries for interaction with other DragDrop objects.</li><li>handle element(s): The drag operation only occurs if the element that was clicked matches a handle element. By default this is the linked element, but there are times that you will want only a portion of the linked element to initiate the drag operation, and the setHandleElId() method provides a way to define this.</li><li>drag element: this represents the element that would be moved along with the cursor during a drag operation. By default, this is the linked element itself as in <a href="Ext.dd.DD.html">Ext.dd.DD</a>. setDragElId() lets you define a separate element that would be moved, as in <a href="Ext.dd.DDProxy.html">Ext.dd.DDProxy</a>.</li></ul>This class should not be instantiated until the onload event to ensure that the associated elements are available. The following would define a DragDrop obj that would interact with any other DragDrop obj in the "group1" group: <pre>dd = new Ext.dd.DragDrop("div1", "group1");
 </pre>Since none of the event handlers have been implemented, nothing would actually happen if you were to run the code above. Normally you would override this class or one of the default implementations, but you can also override the methods you want on an instance of the class... <pre>dd.onDragDrop = function(e, id) {
 alert("dd was dropped on " + id);
 }
 </pre>
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#cls-Ext.dd.DragDrop Ext JS source
 */
public class DragDrop {

  /**
   *
   *
   * @param id of the element that is linked to this instance
   * @param sGroup the group of related DragDrop objects
   * @param config an object containing configurable attributes Valid properties for DragDrop: padding, isTarget, maintainOffset, primaryButtonOnly
   */
  public function DragDrop(id:String, sGroup:String, config:Object) {
    super();
  }

  /**
   Internal typeof flag
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-__ygDragDrop Ext JS source
   */
  public native function get __ygDragDrop():Object;

  /**
   * @private
   */
  public native function set __ygDragDrop(value:Object):void;

  /**
   Cached reference to the linked element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-_domRef Ext JS source
   */
  public native function get _domRef():Object;

  /**
   * @private
   */
  public native function set _domRef(value:Object):void;

  /**
   The available property is false until the linked dom element is accessible.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-available Ext JS source
   */
  public native function get available():Boolean;

  /**
   * @private
   */
  public native function set available(value:Boolean):void;

  /**
   Configuration attributes passed into the constructor
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-config Ext JS source
   */
  public native function get config():Object;

  /**
   * @private
   */
  public native function set config(value:Object):void;

  /**
   Set to true when horizontal constraints are applied
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-constrainX Ext JS source
   */
  public native function get constrainX():Boolean;

  /**
   * @private
   */
  public native function set constrainX(value:Boolean):void;

  /**
   Set to true when vertical constraints are applied
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-constrainY Ext JS source
   */
  public native function get constrainY():Boolean;

  /**
   * @private
   */
  public native function set constrainY(value:Boolean):void;

  /**
   Provides default constraint padding to "constrainTo" elements (defaults to {left: 0, right:0, top:0, bottom:0}).
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-defaultPadding Ext JS source
   */
  public native function get defaultPadding():Object;

  /**
   * @private
   */
  public native function set defaultPadding(value:Object):void;

  /**
   The id of the element that will be dragged. By default this is same as the linked element, but could be changed to another element. Ex: Ext.dd.DDProxy
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-dragElId Ext JS source
   */
  public native function get dragElId():String;

  /**
   * @private
   */
  public native function set dragElId(value:String):void;

  /**
   The group defines a logical collection of DragDrop objects that are related. Instances only get events when interacting with other DragDrop object in the same group. This lets us define multiple groups using a single DragDrop subclass if we want. An object in the format {'group1':true, 'group2':true}
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-groups Ext JS source
   */
  public native function get groups():Object;

  /**
   * @private
   */
  public native function set groups(value:Object):void;

  /**
   The ID of the element that initiates the drag operation. By default this is the linked element, but could be changed to be a child of this element. This lets us do things like only starting the drag when the header element within the linked html element is clicked.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-handleElId Ext JS source
   */
  public native function get handleElId():String;

  /**
   * @private
   */
  public native function set handleElId(value:String):void;

  /**
   By default, drags can only be initiated if the mousedown occurs in the region the linked element is. This is done in part to work around a bug in some browsers that mis-report the mousedown if the previous mouseup happened outside of the window. This property is set to true if outer handles are defined.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-hasOuterHandles Ext JS source
   */
  public native function get hasOuterHandles():Boolean;

  /**
   * @private
   */
  public native function set hasOuterHandles(value:Boolean):void;

  /**
   The id of the element associated with this object. This is what we refer to as the "linked element" because the size and position of this element is used to determine when the drag and drop objects have interacted.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-id Ext JS source
   */
  public native function get id():String;

  /**
   * @private
   */
  public native function set id(value:String):void;

  /**
   Set to false to enable a DragDrop object to fire drag events while dragging over its own Element. Defaults to true - DragDrop objects do not by default fire drag events to themselves.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-ignoreSelf Ext JS source
   */
  public native function get ignoreSelf():Boolean;

  /**
   * @private
   */
  public native function set ignoreSelf(value:Boolean):void;

  /**
   An Array of CSS class names for elements to be considered in valid as drag handles.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-invalidHandleClasses Ext JS source
   */
  public native function get invalidHandleClasses():Array;

  /**
   * @private
   */
  public native function set invalidHandleClasses(value:Array):void;

  /**
   An object who's property names identify the IDs of elements to be considered invalid as drag handles. A non-null property value identifies the ID as invalid. For example, to prevent dragging from being initiated on element ID "foo", use:<pre><code>{
   foo: true
   }</code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-invalidHandleIds Ext JS source
   */
  public native function get invalidHandleIds():Object;

  /**
   * @private
   */
  public native function set invalidHandleIds(value:Object):void;

  /**
   An object who's property names identify HTML tags to be considered invalid as drag handles. A non-null property value identifies the tag as invalid. Defaults to the following value which prevents drag operations from being initiated by &lt;a&gt; elements:<pre><code>{
   A: "A"
   }</code></pre>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-invalidHandleTypes Ext JS source
   */
  public native function get invalidHandleTypes():Object;

  /**
   * @private
   */
  public native function set invalidHandleTypes(value:Object):void;

  /**
   By default, all instances can be a drop target. This can be disabled by setting isTarget to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-isTarget Ext JS source
   */
  public native function get isTarget():Boolean;

  /**
   * @private
   */
  public native function set isTarget(value:Boolean):void;

  /**
   Individual drag/drop instances can be locked. This will prevent onmousedown start drag.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-locked Ext JS source
   */
  public native function get locked():Boolean;

  /**
   * @private
   */
  public native function set locked(value:Boolean):void;

  /**
   Maintain offsets when we resetconstraints. Set to true when you want the position of the element relative to its parent to stay the same when the page changes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-maintainOffset Ext JS source
   */
  public native function get maintainOffset():Boolean;

  /**
   * @private
   */
  public native function set maintainOffset(value:Boolean):void;

  /**
   The right constraint
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-maxX Ext JS source
   */
  public native function get maxX():int;

  /**
   * @private
   */
  public native function set maxX(value:int):void;

  /**
   The down constraint
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-maxY Ext JS source
   */
  public native function get maxY():int;

  /**
   * @private
   */
  public native function set maxY(value:int):void;

  /**
   The left constraint
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-minX Ext JS source
   */
  public native function get minX():int;

  /**
   * @private
   */
  public native function set minX(value:int):void;

  /**
   The up constraint
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-minY Ext JS source
   */
  public native function get minY():int;

  /**
   * @private
   */
  public native function set minY(value:int):void;

  /**
   When set to true, other DD objects in cooperating DDGroups do not receive notification events when this DD object is dragged over them. Defaults to false.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-moveOnly Ext JS source
   */
  public native function get moveOnly():Boolean;

  /**
   * @private
   */
  public native function set moveOnly(value:Boolean):void;

  /**
   The padding configured for this drag and drop object for calculating the drop zone intersection with this object. An array containing the 4 padding values: [top, right, bottom, left]
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-padding Ext JS source
   */
  public native function get padding():Array;

  /**
   * @private
   */
  public native function set padding(value:Array):void;

  /**
   By default the drag and drop instance will only respond to the primary button click (left button for a right-handed mouse). Set to true to allow drag and drop to start with any mouse click that is propagated by the browser
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-primaryButtonOnly Ext JS source
   */
  public native function get primaryButtonOnly():Boolean;

  /**
   * @private
   */
  public native function set primaryButtonOnly(value:Boolean):void;

  /**
   The linked element's absolute X position at the time the drag was started
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-startPageX Ext JS source
   */
  public native function get startPageX():int;

  /**
   * @private
   */
  public native function set startPageX(value:int):void;

  /**
   The linked element's absolute X position at the time the drag was started
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-startPageY Ext JS source
   */
  public native function get startPageY():int;

  /**
   * @private
   */
  public native function set startPageY(value:int):void;

  /**
   Array of pixel locations the element will snap to if we specified a horizontal graduation/interval. This array is generated automatically when you define a tick interval.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-xTicks Ext JS source
   */
  public native function get xTicks():Array;

  /**
   * @private
   */
  public native function set xTicks(value:Array):void;

  /**
   Array of pixel locations the element will snap to if we specified a vertical graduation/interval. This array is generated automatically when you define a tick interval.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#prop-Ext.dd.DragDrop-yTicks Ext JS source
   */
  public native function get yTicks():Array;

  /**
   * @private
   */
  public native function set yTicks(value:Array):void;

  /**
   * Lets you specify a css class of elements that will not initiate a drag
   *
   * @param cssClass the class of the elements you wish to ignore
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-addInvalidHandleClass Ext JS source
   */
  public native function addInvalidHandleClass(cssClass:String):void;

  /**
   * Lets you to specify an element id for a child of a drag handle that should not initiate a drag
   *
   * @param id the element id of the element you wish to ignore
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-addInvalidHandleId Ext JS source
   */
  public native function addInvalidHandleId(id:String):void;

  /**
   * Allows you to specify a tag name that should not start a drag operation when clicked. This is designed to facilitate embedding links within a drag handle that do something other than start the drag.
   *
   * @param tagName the type of element to exclude
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-addInvalidHandleType Ext JS source
   */
  public native function addInvalidHandleType(tagName:String):void;

  /**
   * Add this instance to a group of related drag/drop objects. All instances belong to at least one group, and can belong to as many groups as needed.
   *
   * @param sGroup the name of the group
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-addToGroup Ext JS source
   */
  public native function addToGroup(sGroup:String):void;

  /**
   * Applies the configuration parameters that were passed into the constructor. This is supposed to happen at each level through the inheritance chain. So a DDProxy implementation will execute apply config on DDProxy, DD, and DragDrop in order to get all of the parameters that are available in each object.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-applyConfig Ext JS source
   */
  public native function applyConfig():void;

  /**
   * Code that executes immediately before the onDrag event
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4Drag Ext JS source
   */
  public native function b4Drag():void;

  /**
   * Code that executes immediately before the onDragDrop event
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4DragDrop Ext JS source
   */
  public native function b4DragDrop():void;

  /**
   * Code that executes immediately before the onDragOut event
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4DragOut Ext JS source
   */
  public native function b4DragOut():void;

  /**
   * Code that executes immediately before the onDragOver event
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4DragOver Ext JS source
   */
  public native function b4DragOver():void;

  /**
   * Code that executes immediately before the endDrag event
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4EndDrag Ext JS source
   */
  public native function b4EndDrag():void;

  /**
   * Code executed immediately before the onMouseDown event
   *
   * @param e the mousedown event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4MouseDown Ext JS source
   */
  public native function b4MouseDown(e:IEventObject):void;

  /**
   * Code that executes immediately before the startDrag event
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-b4StartDrag Ext JS source
   */
  public native function b4StartDrag():void;

  /**
   * Clears any constraints applied to this instance. Also clears ticks since they can't exist independent of a constraint at this time.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-clearConstraints Ext JS source
   */
  public native function clearConstraints():void;

  /**
   * Clears any tick interval defined for this instance
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-clearTicks Ext JS source
   */
  public native function clearTicks():void;

  /**
   * Initializes the drag drop object's constraints to restrict movement to a certain element. Usage: <pre><code>var dd = new Ext.dd.DDProxy("dragDiv1", "proxytest",
   { dragElId: "existingProxyDiv" });
   dd.startDrag = function(){
   this.constrainTo("parent-id");
   };
   </code></pre>Or you can initialize it using the <a href="Ext.Element.html">Ext.Element</a> object: <pre><code>Ext.get("dragDiv1").initDDProxy("proxytest", {dragElId: "existingProxyDiv"}, {
   startDrag : function(){
   this.constrainTo("parent-id");
   }
   });
   </code></pre>
   *
   * @param constrainTo The element to constrain to.
   * @param pad Pad provides a way to specify "padding" of the constraints, and can be either a number for symmetrical padding (4 would be equal to {left:4, right:4, top:4, bottom:4}) or an object containing the sides to pad. For example: {right:10, bottom:10}
   * @param inContent Constrain the draggable in the content box of the element (inside padding and borders)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-constrainTo Ext JS source
   */
  public native function constrainTo(constrainTo:*, pad:* = null, inContent:Boolean = false):void;

  /**
   * Fired when we are done dragging the object
   *
   * @param e the mouseup event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-endDrag Ext JS source
   */
  public native function endDrag(e:IEventObject):void;

  /**
   * Returns a reference to the actual element to drag. By default this is the same as the html element, but it can be assigned to another element. An example of this can be found in Ext.dd.DDProxy
   *
   * @return the html element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-getDragEl Ext JS source
   */
  public native function getDragEl():HTMLElement;

  /**
   * Returns a reference to the linked element
   *
   * @return the html element
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-getEl Ext JS source
   */
  public native function getEl():HTMLElement;

  /**
   * Normally the drag element is moved pixel by pixel, but we can specify that it move a number of pixels at a time. This method resolves the location when we have it set up like this.
   *
   * @param val where we want to place the object
   * @param tickArray sorted array of valid points
   * @return the closest tick
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-getTick Ext JS source
   */
  public native function getTick(val:int, tickArray:Array):int;

  /**
   * Fired when this object is clicked
   *
   * @param e
   * @param oDD the clicked dd object (this dd obj)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-handleMouseDown Ext JS source
   */
  public native function handleMouseDown(e:IEventObject, oDD:DragDrop):void;

  /**
   * Executed when the linked element is available
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-handleOnAvailable Ext JS source
   */
  public native function handleOnAvailable():void;

  /**
   * Sets up the DragDrop object. Must be called in the constructor of any Ext.dd.DragDrop subclass
   *
   * @param id id of the linked element
   * @param sGroup the group of related items
   * @param config configuration attributes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-init Ext JS source
   */
  public native function init(id:*, sGroup:String, config:Object):void;

  /**
   * Initializes Targeting functionality only... the object does not get a mousedown handler.
   *
   * @param id id of the linked element
   * @param sGroup the group of related items
   * @param config configuration attributes
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-initTarget Ext JS source
   */
  public native function initTarget(id:*, sGroup:String, config:Object):void;

  /**
   * Returns true if this instance is locked, or the drag drop mgr is locked (meaning that all drag/drop is disabled on the page.)
   *
   * @return true if this obj or all drag/drop is locked, else false
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-isLocked Ext JS source
   */
  public native function isLocked():Boolean;

  /**
   * Checks the tag exclusion list to see if this click should be ignored
   *
   * @param node the HTMLElement to evaluate
   * @return true if this is a valid tag type, false if not
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-isValidHandleChild Ext JS source
   */
  public native function isValidHandleChild(node:HTMLElement):Boolean;

  /**
   * Lock this instance
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-lock Ext JS source
   */
  public native function lock():void;

  /**
   * Override the onAvailable method to do what is needed after the initial position was determined.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onAvailable Ext JS source
   */
  public native function onAvailable():void;

  /**
   * Abstract method called during the onMouseMove event while dragging an object.
   *
   * @param e the mousemove event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onDrag Ext JS source
   */
  public native function onDrag(e:IEventObject):void;

  /**
   * Abstract method called when this item is dropped on another DragDrop obj
   *
   * @param e the mouseup event
   * @param id In POINT mode, the element id this was dropped on. In INTERSECT mode, an array of dd items this was dropped on.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onDragDrop Ext JS source
   */
  public native function onDragDrop(e:IEventObject, id:*):void;

  /**
   * Abstract method called when this element fist begins hovering over another DragDrop obj
   *
   * @param e the mousemove event
   * @param id In POINT mode, the element id this is hovering over. In INTERSECT mode, an array of one or more dragdrop items being hovered over.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onDragEnter Ext JS source
   */
  public native function onDragEnter(e:IEventObject, id:*):void;

  /**
   * Abstract method called when we are no longer hovering over an element
   *
   * @param e the mousemove event
   * @param id In POINT mode, the element id this was hovering over. In INTERSECT mode, an array of dd items that the mouse is no longer over.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onDragOut Ext JS source
   */
  public native function onDragOut(e:IEventObject, id:*):void;

  /**
   * Abstract method called when this element is hovering over another DragDrop obj
   *
   * @param e the mousemove event
   * @param id In POINT mode, the element id this is hovering over. In INTERSECT mode, an array of dd items being hovered over.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onDragOver Ext JS source
   */
  public native function onDragOver(e:IEventObject, id:*):void;

  /**
   * Abstract method called when this item is dropped on an area with no drop target
   *
   * @param e the mouseup event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onInvalidDrop Ext JS source
   */
  public native function onInvalidDrop(e:IEventObject):void;

  /**
   * Event handler that fires when a drag/drop obj gets a mousedown
   *
   * @param e the mousedown event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onMouseDown Ext JS source
   */
  public native function onMouseDown(e:IEventObject):void;

  /**
   * Event handler that fires when a drag/drop obj gets a mouseup
   *
   * @param e the mouseup event
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-onMouseUp Ext JS source
   */
  public native function onMouseUp(e:IEventObject):void;

  /**
   * Remove's this instance from the supplied interaction group
   *
   * @param sGroup The group to drop
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-removeFromGroup Ext JS source
   */
  public native function removeFromGroup(sGroup:String):void;

  /**
   * Unsets an invalid css class
   *
   * @param cssClass the class of the element(s) you wish to re-enable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-removeInvalidHandleClass Ext JS source
   */
  public native function removeInvalidHandleClass(cssClass:String):void;

  /**
   * Unsets an invalid handle id
   *
   * @param id the id of the element to re-enable
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-removeInvalidHandleId Ext JS source
   */
  public native function removeInvalidHandleId(id:String):void;

  /**
   * Unsets an excluded tag name set by addInvalidHandleType
   *
   * @param tagName the type of element to unexclude
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-removeInvalidHandleType Ext JS source
   */
  public native function removeInvalidHandleType(tagName:String):void;

  /**
   * resetConstraints must be called if you manually reposition a dd element.
   *
   * @param maintainOffset
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-resetConstraints Ext JS source
   */
  public native function resetConstraints(maintainOffset:Boolean):void;

  /**
   * Allows you to specify that an element other than the linked element will be moved with the cursor during a drag
   *
   * @param id the id of the element that will be used to initiate the drag
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setDragElId Ext JS source
   */
  public native function setDragElId(id:String):void;

  /**
   * Allows you to specify a child of the linked element that should be used to initiate the drag operation. An example of this would be if you have a content div with text and links. Clicking anywhere in the content area would normally start the drag operation. Use this method to specify that an element inside of the content div is the element that starts the drag operation.
   *
   * @param id the id of the element that will be used to initiate the drag.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setHandleElId Ext JS source
   */
  public native function setHandleElId(id:String):void;

  /**
   * Stores the initial placement of the linked element.
   *
   * @param diffX the X offset, default 0
   * @param diffY the Y offset, default 0
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setInitPosition Ext JS source
   */
  public native function setInitPosition(diffX:int, diffY:int):void;

  /**
   * Allows you to set an element outside of the linked element as a drag handle
   *
   * @param id id of the element that will be used to initiate the drag
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setOuterHandleElId Ext JS source
   */
  public native function setOuterHandleElId(id:*):void;

  /**
   * Configures the padding for the target zone in px. Effectively expands (or reduces) the virtual object size for targeting calculations. Supports css-style shorthand; if only one parameter is passed, all sides will have that padding, and if only two are passed, the top and bottom will have the first param, the left and right the second.
   *
   * @param iTop Top pad
   * @param iRight Right pad
   * @param iBot Bot pad
   * @param iLeft Left pad
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setPadding Ext JS source
   */
  public native function setPadding(iTop:int, iRight:int, iBot:int, iLeft:int):void;

  /**
   * Sets the start position of the element. This is set when the obj is initialized, the reset when a drag is started.
   *
   * @param pos position (from previous lookup)
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setStartPosition Ext JS source
   */
  public native function setStartPosition(pos:*):void;

  /**
   * By default, the element can be dragged any place on the screen. Use this method to limit the horizontal travel of the element. Pass in 0,0 for the parameters if you want to lock the drag to the y axis.
   *
   * @param iLeft the number of pixels the element can move to the left
   * @param iRight the number of pixels the element can move to the right
   * @param iTickSize optional parameter for specifying that the element should move iTickSize pixels at a time.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setXConstraint Ext JS source
   */
  public native function setXConstraint(iLeft:int, iRight:int, iTickSize:int):void;

  /**
   * Create the array of horizontal tick marks if an interval was specified in setXConstraint().
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setXTicks Ext JS source
   */
  public native function setXTicks():void;

  /**
   * By default, the element can be dragged any place on the screen. Set this to limit the vertical travel of the element. Pass in 0,0 for the parameters if you want to lock the drag to the x axis.
   *
   * @param iUp the number of pixels the element can move up
   * @param iDown the number of pixels the element can move down
   * @param iTickSize optional parameter for specifying that the element should move iTickSize pixels at a time.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setYConstraint Ext JS source
   */
  public native function setYConstraint(iUp:int, iDown:int, iTickSize:int):void;

  /**
   * Create the array of vertical tick marks if an interval was specified in setYConstraint().
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-setYTicks Ext JS source
   */
  public native function setYTicks():void;

  /**
   * Abstract method called after a drag/drop object is clicked and the drag or mousedown time thresholds have been met.
   *
   * @param X click location
   * @param Y click location
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-startDrag Ext JS source
   */
  public native function startDrag(X:int, Y:int):void;

  /**
   * toString method
   *
   * @return string representation of the dd obj
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-toString Ext JS source
   */
  public native function toString():String;

  /**
   * Unlock this instance.
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-unlock Ext JS source
   */
  public native function unlock():void;

  /**
   * Remove all drag and drop hooks for this element
   *
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/DDCore.html#method-Ext.dd.DragDrop-unreg Ext JS source
   */
  public native function unreg():void;

}
}
    