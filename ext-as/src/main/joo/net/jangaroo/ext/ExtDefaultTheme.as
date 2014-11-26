package net.jangaroo.ext {

public class ExtDefaultTheme {

  public static const RESET_MIN_CSS_URL:String = "public/com/sencha/ext-js/3.4.1.1/resources/css/reset-min.css";

  public static const DEFAULT_THEME_CSS_URL:String = "public/com/sencha/ext-js/3.4.1.1/resources/css/ext-all.css";

  public static const CSS_URLS:Array = [RESET_MIN_CSS_URL, DEFAULT_THEME_CSS_URL];

  public static function load(callback:Function):void {
    Exml.loadStyleSheets(CSS_URLS, callback);
  }
}
}