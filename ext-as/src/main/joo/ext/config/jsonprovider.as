package ext.config {


/**
 *
 * <p>This class serves as a typed config object for constructor of class JsonProvider.</p>
 *
 * @see ext.direct.JsonProvider
 */
[ExtConfig(target="ext.direct.JsonProvider")]
public class jsonprovider extends provider {

  public function jsonprovider(config:Object = null) {

    super(config);
  }


}
}
    