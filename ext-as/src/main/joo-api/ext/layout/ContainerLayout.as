package ext.layout {
import ext.Component;
import ext.Container;
import ext.Element;
import ext.Template;
import ext.config.containerlayout;

/**
 * This class is intended to be extended or created via the <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">layout</a></b></tt> configuration property. See <tt><b><a href="output/Ext.Container.html#Ext.Container-layout">Ext.Container.layout</a></b></tt> for additional details.

 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 *

 * @see ext.config.containerlayout
 * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ContainerLayout Sencha Docs Ext JS 3.4
 */
public class ContainerLayout {

  /**
   *
   *
   * @see ext.config.containerlayout
   */
  public function ContainerLayout(config:containerlayout = null) {
    super();
  }

  /**
   A reference to the <a href="Ext.Component.html">Ext.Component</a> that is active. For example, <pre><code>if(myPanel.layout.activeItem.id == 'item-1') { ... }
   </code></pre><tt>activeItem</tt> only applies to layout styles that can display items one at a time (like <a href="Ext.layout.AccordionLayout.html">Ext.layout.AccordionLayout</a>, <a href="Ext.layout.CardLayout.html">Ext.layout.CardLayout</a> and <a href="Ext.layout.FitLayout.html">Ext.layout.FitLayout</a>). Related to <a href="output/Ext.Container.html#Ext.Container-activeItem">Ext.Container.activeItem</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ContainerLayout-property-activeItem Sencha Docs Ext JS 3.4
   */
  public native function get activeItem():Component;

  /**
   The <a href="Ext.Template.html">Ext.Template</a> used by Field rendering layout classes (such as <a href="Ext.layout.FormLayout.html">Ext.layout.FormLayout</a>) to create the DOM structure of a fully wrapped, labeled and styled form Field. A default Template is supplied, but this may be overridden to create custom field structures. The template processes values returned from <a href="output/Ext.layout.FormLayout.html#Ext.layout.FormLayout-getTemplateArgs">Ext.layout.FormLayout.getTemplateArgs</a>.
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ContainerLayout-property-fieldTpl Sencha Docs Ext JS 3.4
   */
  public native function get fieldTpl():Template;

  /**
   * @private
   */
  public native function set fieldTpl(value:Template):void;

  /**
   An optional extra CSS class that will be added to the container. This can be useful for adding customized styles to the container or any of its children using standard CSS rules. See <a href="Ext.Component.html">Ext.Component</a>.<a href="output/Ext.Component.html#Ext.Component-ctCls">ctCls</a> also.
   <p><b>Note</b>: <tt>extraCls</tt> defaults to <tt>''</tt> except for the following classes which assign a value by default:</p><div class="mdetail-params"><ul><li><a href="Ext.layout.AbsoluteLayout.html">Absolute Layout</a> : <tt>'x-abs-layout-item'</tt></li><li><a href="Ext.layout.Box.html">Box Layout</a> : <tt>'x-box-item'</tt></li><li><a href="Ext.layout.ColumnLayout.html">Column Layout</a> : <tt>'x-column'</tt></li></ul></div>To configure the above Classes with an extra CSS class append to the default. For example, for ColumnLayout:<pre><code>extraCls: 'x-column custom-class'
   </code></pre><br/><br/>
   */
  public native function get extraCls():String;

  /**
   True to hide each contained item on render (defaults to false).
   */
  public native function get renderHidden():Boolean;

  /**
   * Applies extraCls and hides the item if renderHidden is true.
   *
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ContainerLayout-method-configureItem Sencha Docs Ext JS 3.4
   */
  public native function configureItem():void;

  /**
   * Parses a number or string representing margin sizes into an object. Supports CSS-style margin declarations (e.g. 10, "10", "10 10", "10 10 10" and "10 10 10 10" are all valid options and would return the same result)
   *
   * @param v The encoded margins
   * @return An object with margin sizes for top, right, bottom and left
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ContainerLayout-method-parseMargins Sencha Docs Ext JS 3.4
   */
  public native function parseMargins(v:*):Object;

  /**
   * Renders the given Component into the target Element. If the Component is already rendered,
   * it is moved to the provided target instead.
   *
   * @param c The Component to render
   * @param position The position within the target to render the item to
   * @param target The target Element
   * @see http://docs.sencha.com/ext-js/3-4/#!/api/Ext.layout.ContainerLayout-method-renderItem Sencha Docs Ext JS 3.4
   */
  public native function renderItem(c:Component, position:Number, target:Element):void;

  public native function onLayout(ct:Container, target:Element):void;

  public native function layout():void;

}
}
    