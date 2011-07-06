package ext.config {


/**
 * The base class that other non-interacting Toolbar Item classes should extend in order to get some basic common toolbar item functionality.
 * <p>This class serves as a typed config object for constructor of class Item.</p>
 *
 * @see ext.toolbar.Item
 */
[ExtConfig(target="ext.toolbar.Item")]
public class tbitem extends box {

  public function tbitem(config:Object = null) {

    super(config);
  }


  /**
   Text to be used for the menu if the item is overflowed.
   */
  public native function get overflowText():String;

  /**
   * @private
   */
  public native function set overflowText(value:String):void;


}
}
    