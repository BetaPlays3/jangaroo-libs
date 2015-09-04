package ext.config {
import joo.JavaScriptObject;

/**
 * This event is fired when the tool is clicked.
 */
[Event(name="onclick", type="ext.panel.event.ToolClickEvent")]
/**
 * A panel's tool configuration.
 * @see ext.config.panel#tools
 */
public class tool extends JavaScriptObject {

  public function tool(config:Object = null) {
    super(config);
  }

  /**
   * The type of tool to create. By default, this assigns a CSS class of the form <code>x-tool-<i>&lt;tool-type&gt;</i></code> to the resulting tool Element. Ext provides CSS rules, and an icon sprite containing images for the tool types listed below. The developer may implement custom tools by supplying alternate CSS rules and background images: <div style="margin-left: 2em"><div><code>toggle</code> (Created by default when <a href="output/Ext.Panel.html#Ext.Panel-collapsible">collapsible</a> is <code>true</code>)</div><div><code>close</code></div><div><code>minimize</code></div><div><code>maximize</code></div><div><code>restore</code></div><div><code>gear</code></div><div><code>pin</code></div><div><code>unpin</code></div><div><code>right</code></div><div><code>left</code></div><div><code>up</code></div><div><code>down</code></div><div><code>refresh</code></div><div><code>minus</code></div><div><code>plus</code></div><div><code>help</code></div><div><code>search</code></div><div><code>save</code></div><div><code>print</code></div></div></div></li>
   */
  public native function get toolId():String;

  /**
   * @private
   */
  public native function set toolId(value:String):void;

}
}
