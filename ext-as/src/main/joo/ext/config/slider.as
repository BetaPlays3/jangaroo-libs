package ext.config {


/**
 * Slider which supports vertical or horizontal orientation, keyboard adjustments, configurable snapping, axis clicking and animation. Can be added as an item to any container. Example usage: <pre><code>new Ext.slider.SingleSlider({
 renderTo: Ext.getBody(),
 width: 200,
 value: 50,
 increment: 10,
 minValue: 0,
 maxValue: 100
 });
 </code></pre>The class Ext.slider.SingleSlider is aliased to Ext.Slider for backwards compatibility.
 *
 * <p>This class serves as a
 * typed config object for constructor of class SingleSlider.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.slider.SingleSlider
 */
[ExtConfig(target="ext.slider.SingleSlider", xtype="slider")]
public class slider extends multislider {

  public function slider(config:Object = null) {

    super(config);
  }


}
}
    