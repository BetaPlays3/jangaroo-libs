package ext {

import ext.config.template;

/**
 * Represents an HTML fragment template. Templates may be <a href="output/Ext.Template.html#Ext.Template-compile">precompiled</a> for greater performance.
 <p>For example usage <a href="output/Ext.Template.html#Ext.Template-Template">see the constructor</a>.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.template
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template Sencha Docs Ext JS 3.4
 */
[Native(amd="ext-as.module", global="Ext.Template")]
public class Template
 {

  /**
   * An instance of this class may be created by passing to the constructor either a single argument, or multiple arguments: <div class="mdetail-params"><ul><li><b>single argument</b> : String/Array <div class="sub-desc">The single argument may be either a String or an Array:<ul><li><tt>String</tt> :</li><li style="list-style: none"><pre><code>var t = new Ext.Template("&lt;div&gt;Hello {0}.&lt;/div&gt;");
   t.<a href="output/Ext.Template.html#Ext.Template-append">append</a>('some-element', ['foo']);
   </code></pre></li><li><tt>Array</tt> :</li><li style="list-style: none">An Array will be combined with <code>join('')</code>. <pre><code>var t = new Ext.Template([
   '&lt;div name="{id}"&gt;',
   '&lt;span class="{cls}"&gt;{name:trim} {value:ellipsis(10)}&lt;/span&gt;',
   '&lt;/div&gt;',
   ]);
   t.<a href="output/Ext.Template.html#Ext.Template-compile">compile</a>();
   t.<a href="output/Ext.Template.html#Ext.Template-append">append</a>('some-element', {id: 'myid', cls: 'myclass', name: 'foo', value: 'bar'});
   </code></pre></li></ul></div></li><li><b>multiple arguments</b> : String, Object, Array, ... <div class="sub-desc">Multiple arguments will be combined with <code>join('')</code>. <pre><code>var t = new Ext.Template(
   '&lt;div name="{id}"&gt;',
   '&lt;span class="{cls}"&gt;{name} {value}&lt;/span&gt;',
   '&lt;/div&gt;',
   // a configuration object:
   {
   compiled: true,      // <a href="output/Ext.Template.html#Ext.Template-compile">compile</a> immediately
   disableFormats: true // See Notes below.
   }
   );
   </code></pre><p><b>Notes</b>:</p><div class="mdetail-params"><ul><li>Formatting and <code>disableFormats</code> are not applicable for Ext Core.</li><li>For a list of available format functions, see <a href="Ext.util.Format.html">Ext.util.Format</a>.</li><li><code>disableFormats</code> reduces <code><a href="output/Ext.Template.html#Ext.Template-apply">apply</a></code> time when no formatting is required.</li></ul></div></div></li></ul></div>
   *
   * @param config
   * @see ext.config.template
   */
  public function Template(...config:Array/*template*/) {
    super();
  }

  /**
   See <code><a href="output/Ext.Template.html#Ext.Template-disableFormats">disableFormats</a></code>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-property-disableFormats Sencha Docs Ext JS 3.4
   */
  public native function get disableFormats():Boolean;

  /**
   * @private
   */
  public native function set disableFormats(value:Boolean):void;

  /**

   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-property-html Sencha Docs Ext JS 3.4
   */
  public native function get html():Object;

  /**
   * @private
   */
  public native function set html(value:Object):void;

  /**
   See <code><a href="output/Ext.Template.html#Ext.Template-re">re</a></code>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-property-re Sencha Docs Ext JS 3.4
   */
  public native function get re():RegExp;

  /**
   * @private
   */
  public native function set re(value:RegExp):void;

  /**
   Specify <tt>true</tt> to compile the template immediately (see <code><a href="output/Ext.Template.html#Ext.Template-compile">compile</a></code>). Defaults to <tt>false</tt>.
   */
  public native function get compiled():Boolean;

  /**
   * Applies the supplied <code>values</code> to the template and appends the new node(s) to the specified <code>el</code>. <p>For example usage <a href="output/Ext.Template.html#Ext.Template-Template">see the constructor</a>.</p>
   *
   * @param el The context element
   * @param values The template values. Can be an array if the params are numeric (i.e. <code>{0}</code>) or an object (i.e. <code>{foo: 'bar'}</code>).
   * @param returnElement true to return an Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-append Sencha Docs Ext JS 3.4
   */
  public native function append(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Alias for <a href="output/Ext.Template.html#Ext.Template-applyTemplate">applyTemplate</a> Returns an HTML fragment of this template with the specified <code>values</code> applied.
   *
   * @param values The template values. Can be an array if the params are numeric (i.e. <code>{0}</code>) or an object (i.e. <code>{foo: 'bar'}</code>).
   * @return The HTML fragment
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-apply Sencha Docs Ext JS 3.4
   */
  public native function apply(values:*):String;

  /**
   * Returns an HTML fragment of this template with the specified <code>values</code> applied.
   *
   * @param values The template values. Can be an array if the params are numeric (i.e. <code>{0}</code>) or an object (i.e. <code>{foo: 'bar'}</code>).
   * @return The HTML fragment
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-applyTemplate Sencha Docs Ext JS 3.4
   */
  public native function applyTemplate(values:*):String;

  /**
   * Compiles the template into an internal function, eliminating the RegEx overhead.
   *
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-compile Sencha Docs Ext JS 3.4
   */
  public native function compile():Template;

  /**
   * Creates a template from the passed element's value (<i>display:none</i> textarea, preferred) or innerHTML.
   *
   * @param el A DOM element or its id
   * @param config A configuration object
   * @return The created template
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-from Sencha Docs Ext JS 3.4
   */
  public static native function from(el:*, config:template):Template;

  /**
   * Applies the supplied values to the template and inserts the new node(s) after el.
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-insertAfter Sencha Docs Ext JS 3.4
   */
  public native function insertAfter(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Applies the supplied values to the template and inserts the new node(s) before el.
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-insertBefore Sencha Docs Ext JS 3.4
   */
  public native function insertBefore(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Applies the supplied values to the template and inserts the new node(s) as the first child of el.
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-insertFirst Sencha Docs Ext JS 3.4
   */
  public native function insertFirst(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Applies the supplied values to the template and overwrites the content of el with the new node(s).
   *
   * @param el The context element
   * @param values The template values. Can be an array if your params are numeric (i.e. {0}) or an object (i.e. {foo: 'bar'})
   * @param returnElement true to return a Ext.Element (defaults to undefined)
   * @return The new node or Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-overwrite Sencha Docs Ext JS 3.4
   */
  public native function overwrite(el:*, values:*, returnElement:Boolean = false):*;

  /**
   * Sets the HTML used as the template and optionally compiles it.
   *
   * @param html
   * @param compile True to compile the template (defaults to undefined)
   * @return this
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.Template-method-set Sencha Docs Ext JS 3.4
   */
  public native function set(html:String, compile:Boolean = false):Template;

}
}
    