package ext.chart {
import ext.FlashComponent;
import ext.data.Store;

/**
 * Fires before a refresh to the chart data is called. If the beforerefresh handler returns <tt>false</tt> the <a href="output/Ext.chart.Chart.html#Ext.chart.Chart-refresh">refresh</a> action will be cancelled.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.chart.Chart</code>

 *       </li>

 * </ul>
 */
[Event(name="beforerefresh")]

/**
 * Fires after the chart data has been refreshed.
 * Listeners will be called with the following arguments:
 * <ul>

 *       <li>
 *           <code>this_:ext.chart.Chart</code>

 *       </li>

 * </ul>
 */
[Event(name="refresh")]


/**
 * The Ext.chart package provides the capability to visualize data with flash based charting. Each chart binds directly to an Ext.data.Store enabling automatic updates of the chart. To change the look and feel of a chart, see the <a href="output/Ext.chart.Chart.html#Ext.chart.Chart-chartStyle">chartStyle</a> and <a href="output/Ext.chart.Chart.html#Ext.chart.Chart-extraStyle">extraStyle</a> config options.
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * <p>This component is created by the xtype 'chart' / the EXML element &lt;chart>.</p>
 * @see ext.config.chart
 * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#cls-Ext.chart.Chart Ext JS source
 */
public class Chart extends FlashComponent {

  /**
   *
   *
   * @see ext.config.chart
   */
  public function Chart() {
    super();
  }

  /**
   Sets the url to load the chart from. This should be set to a local resource.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#prop-Ext.chart.Chart-CHART_URL Ext JS source
   */
  public static const CHART_URL:String;

  /**
   Sets styles for this chart. This contains default styling, so modifying this property will <b>override</b> the built in styles of the chart. Use <a href="output/Ext.chart.Chart.html#Ext.chart.Chart-extraStyle">extraStyle</a> to add customizations to the default styling.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get chartStyle():Object;

  /**
   True to add a "cache buster" to the end of the chart url. Defaults to true for Opera and IE.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get disableCaching():Boolean;

  /**
   Contains extra styles that will be added or overwritten to the default chartStyle. Defaults to <tt>null</tt>. For a detailed list of the options available, visit the YUI Charts site at <a href="http://developer.yahoo.com/yui/charts/#basicstyles">http://developer.yahoo.com/yui/charts/#basicstyles</a><br/>Some of the options available:<br/><ul style="padding:5px;padding-left:16px;list-style-type:inherit;"><li><b>padding</b> - The space around the edge of the chart's contents. Padding does not increase the size of the chart.</li><li><b>animationEnabled</b> - A Boolean value that specifies whether marker animations are enabled or not. Enabled by default.</li><li><b>font</b> - An Object defining the font style to be used in the chart. Defaults to <tt>{ name: 'Tahoma', color: 0x444444, size: 11 }</tt><br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>name</b> - font name</li><li><b>color</b> - font color (hex code, ie: "#ff0000", "ff0000" or 0xff0000)</li><li><b>size</b> - font size in points (numeric portion only, ie: 11)</li><li><b>bold</b> - boolean</li><li><b>italic</b> - boolean</li><li><b>underline</b> - boolean</li></ul></li><li><b>border</b> - An object defining the border style around the chart. The chart itself will decrease in dimensions to accommodate the border.<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>color</b> - border color (hex code, ie: "#ff0000", "ff0000" or 0xff0000)</li><li><b>size</b> - border size in pixels (numeric portion only, ie: 1)</li></ul></li><li><b>background</b> - An object defining the background style of the chart.<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>color</b> - border color (hex code, ie: "#ff0000", "ff0000" or 0xff0000)</li><li><b>image</b> - an image URL. May be relative to the current document or absolute.</li></ul></li><li><b>legend</b> - An object defining the legend style<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>display</b> - location of the legend. Possible values are "none", "left", "right", "top", and "bottom".</li><li><b>spacing</b> - an image URL. May be relative to the current document or absolute.</li><li><b>padding, border, background, font</b> - same options as described above.</li></ul></li><li><b>dataTip</b> - An object defining the style of the data tip (tooltip).<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>padding, border, background, font</b> - same options as described above.</li></ul></li><li><b>xAxis and yAxis</b> - An object defining the style of the style of either axis.<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>color</b> - same option as described above.</li><li><b>size</b> - same option as described above.</li><li><b>showLabels</b> - boolean</li><li><b>labelRotation</b> - a value in degrees from -90 through 90. Default is zero.</li></ul></li><li><b>majorGridLines and minorGridLines</b> - An object defining the style of the style of the grid lines.<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>color, size</b> - same options as described above.</li></ul></li><li><b>zeroGridLine</b> - An object defining the style of the style of the zero grid line.<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>color, size</b> - same options as described above.</li></ul></li><li><b>majorTicks and minorTicks</b> - An object defining the style of the style of ticks in the chart.<br/><ul style="padding:5px;padding-left:26px;list-style-type:circle;"><li><b>color, size</b> - same options as described above.</li><li><b>length</b> - the length of each tick in pixels extending from the axis.</li><li><b>display</b> - how the ticks are drawn. Possible values are "none", "inside", "outside", and "cross".</li></ul></li></ul>
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get extraStyle():Object;

  /**
   Contains styles to apply to the series after a refresh. Defaults to <tt>null</tt>.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  public native function get seriesStyles():Object;

  /**
   The url to load the chart from. This defaults to Ext.chart.Chart.CHART_URL, which should be modified to point to the local charts resource.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/ Ext JS source
   */
  override public native function get url():String;

  /**
   * Changes the data store bound to this chart and refreshes it.
   *
   * @param store The store to bind to this chart
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#method-Ext.chart.Chart-bindStore Ext JS source
   */
  public native function bindStore(store:Store):void;

  /**
   * Sets the styles on all series in the Chart.
   *
   * @param styles Initializer for all Chart series styles.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#method-Ext.chart.Chart-setSeriesStyles Ext JS source
   */
  public native function setSeriesStyles(styles:Array):void;

  /**
   * Sets a single style value on the Chart instance.
   *
   * @param name Name of the Chart style value to change.
   * @param value New value to pass to the Chart style.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#method-Ext.chart.Chart-setStyle Ext JS source
   */
  public native function setStyle(name:String, value:Object):void;

  /**
   * Resets all styles on the Chart instance.
   *
   * @param styles Initializer for all Chart styles.
   * @see http://dev.sencha.com/deploy/ext-3.3.1/docs/source/Chart.html#method-Ext.chart.Chart-setStyles Ext JS source
   */
  public native function setStyles(styles:Object):void;

}
}
    