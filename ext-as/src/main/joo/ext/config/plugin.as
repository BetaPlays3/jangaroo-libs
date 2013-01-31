package ext.config {
import ext.ComponentMgr;

import joo.JavaScriptObject;

import net.jangaroo.ext.Exml;

/**
 * Config class for component plugins implementing ext.Plugin.
 * @see ext.Plugin
 */
[ExtConfig(target="ext.Plugin", ptype="plugin")]
public class plugin extends JavaScriptObject {

  public function plugin(config:Object = null) {
    super(config);
    Exml.establishType(this, "ptype", ComponentMgr["ptypes"]);
  }

  /**
   * TODO
   */
  public native function get ptype():String;

  /**
   * @private
   */
  public native function set ptype(value:String):void;

  /**
   * TODO
   */
  public native function get targetClass():Class;

  /**
   * @private
   */
  public native function set targetClass(value:Class):void;

}
}