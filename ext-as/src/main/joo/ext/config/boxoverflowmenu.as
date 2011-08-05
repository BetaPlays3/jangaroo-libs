package ext.config {

import joo.JavaScriptObject;

/**
 * Description
 * <p>This class serves as a typed config object for constructor of class Menu.</p>
 *
 * @see ext.layout.boxoverflow.Menu
 */
[ExtConfig(target="ext.layout.boxoverflow.Menu")]
public class boxoverflowmenu extends JavaScriptObject {

  public function boxoverflowmenu(config:Object = null) {
    super(config);
  }


  /**
   CSS class added to the afterCt element. This is the element that holds any special items such as scrollers, which must always be present at the rightmost edge of the Container
   */
  public native function get afterCls():String;

  /**
   * @private
   */
  public native function set afterCls(value:String):void;


}
}
    