package ext.chart {


/**
 * Defines a CartesianChart's vertical or horizontal axis.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis Sencha Docs Ext JS 3.4
 */
public class Axis {

  /**
   *
   *
   */
  public function Axis() {
    super();
  }

  /**
   If true, labels that overlap previously drawn labels on the axis will be hidden.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis-property-hideOverlappingLabels Sencha Docs Ext JS 3.4
   */
  public native function get hideOverlappingLabels():Boolean;

  /**
   * @private
   */
  public native function set hideOverlappingLabels(value:Boolean):void;

  /**
   A string reference to the globally-accessible function that may be called to determine each of the label values for this axis.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis-property-labelFunction Sencha Docs Ext JS 3.4
   */
  public native function get labelFunction():String;

  /**
   * @private
   */
  public native function set labelFunction(value:String):void;

  /**
   The space, in pixels, between labels on an axis.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis-property-labelSpacing Sencha Docs Ext JS 3.4
   */
  public native function get labelSpacing():Number;

  /**
   * @private
   */
  public native function set labelSpacing(value:Number):void;

  /**
   The direction in which the axis is drawn. May be "horizontal" or "vertical".
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis-property-orientation Sencha Docs Ext JS 3.4
   */
  public native function get orientation():String;

  /**
   * @private
   */
  public native function set orientation(value:String):void;

  /**
   If true, the items on the axis will be drawn in opposite direction.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis-property-reverse Sencha Docs Ext JS 3.4
   */
  public native function get reverse():Boolean;

  /**
   * @private
   */
  public native function set reverse(value:Boolean):void;

  /**
   The type of axis.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.chart.Axis-property-type Sencha Docs Ext JS 3.4
   */
  public native function get type():String;

  /**
   * @private
   */
  public native function set type(value:String):void;

}
}
    