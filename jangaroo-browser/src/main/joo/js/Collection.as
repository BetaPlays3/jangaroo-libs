package js {

[Native(global="NodeList")]
/**
 * @deprecated use NodeList
 * @see js.NodeList
 */
public class Collection extends Array {

  public native function item(index : Number) : Object;

  public native function getNamedItem(name : String) : Object;

}
}