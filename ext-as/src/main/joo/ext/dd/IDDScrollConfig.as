package ext.dd {

/**
 * Scroll configuration of a DOM element, implemented and used by <code>ScrollManager</code>.
 *
 * @see ScrollManager
 */
public interface IDDScrollConfig {
  /**
   * The frequency of scrolls in milliseconds (defaults to 500).
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-frequency Sencha Docs Ext JS 3.4
   */
  function get frequency():Number;

  /**
   * @private
   */
  function set frequency(value:Number):void;

  /**
   * The number of pixels from the right or left edge of a container the pointer needs to be to trigger scrolling (defaults to 25).
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-hthresh Sencha Docs Ext JS 3.4
   */
  function get hthresh():Number;

  /**
   * @private
   */
  function set hthresh(value:Number):void;

  /**
   * The number of pixels to scroll in each scroll increment (defaults to 100).
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-increment Sencha Docs Ext JS 3.4
   */
  function get increment():Number;

  /**
   * @private
   */
  function set increment(value:Number):void;

  /**
   * The number of pixels from the top or bottom edge of a container the pointer needs to be to trigger scrolling (defaults to 25).
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-vthresh Sencha Docs Ext JS 3.4
   */
  function get vthresh():Number;

  /**
   * @private
   */
  function set vthresh(value:Number):void;

  /**
   * The animation duration in seconds - MUST BE less than Ext.dd.ScrollManager.frequency! (defaults to .4).
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-animDuration Sencha Docs Ext JS 3.4
   */
  function get animDuration():Number;

  /**
   * @private
   */
  function set animDuration(value:Number):void;

  /**
   * True to animate the scroll (defaults to true).
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-animate Sencha Docs Ext JS 3.4
   */
  function get animate():Boolean;

  /**
   * @private
   */
  function set animate(value:Boolean):void;

  /**
   * The named drag drop <a href="output/Ext.dd.DragSource.html#Ext.dd.DragSource-ddGroup">group</a> to which this container belongs (defaults to undefined). If a ddGroup is specified, then container scrolling will only occur when a dragged object is in the same ddGroup.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.dd.ScrollManager-property-ddGroup Sencha Docs Ext JS 3.4
   */
  function get ddGroup():String;

  /**
   * @private
   */
  function set ddGroup(value:String):void;
}
}