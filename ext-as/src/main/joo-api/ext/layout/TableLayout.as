package ext.layout {

/**
 * <p>This layout allows you to easily render content into an HTML table.  The total number of columns can be
 * specified, and rowspan and colspan can be used to create complex layouts within the table.
 * This class is intended to be extended or created via the layout:'table' <b class='link'>ext.Container#layout</b> config,
 * and should generally not need to be created directly via the new keyword.</p>
 * <p>Note that when creating a layout via config, the layout-specific config properties must be passed in via
 * the <b class='link'>ext.Container#layoutConfig</b> object which will then be applied internally to the layout.  In the
 * case of TableLayout, the only valid layout config property is <b class='link' title='#columns'>columns</b>.  However, the items added to a
 * TableLayout can supply the following table-specific config properties:</p>
 * <ul>
 * <li><b>rowspan</b> Applied to the table cell containing the item.</li>
 * <li><b>colspan</b> Applied to the table cell containing the item.</li>
 * <li><b>cellId</b> An id applied to the table cell containing the item.</li>
 * <li><b>cellCls</b> A CSS class name added to the table cell containing the item.</li>
 * </ul>
 * <p>The basic concept of building up a TableLayout is conceptually very similar to building up a standard
 * HTML table.  You simply add each panel (or "cell") that you want to include along with any span attributes
 * specified as the special config properties of rowspan and colspan which work exactly like their HTML counterparts.
 * Rather than explicitly creating and nesting rows and columns as you would in HTML, you simply specify the
 * total column count in the layoutConfig and start adding panels in their natural order from left to right,
 * top to bottom.  The layout will automatically figure out, based on the column count, rowspans and colspans,
 * how to position each panel within the table.  Just like with HTML tables, your rowspans and colspans must add
 * up correctly in your overall layout or you'll end up with missing and/or extra cells!  Example usage:</p>
 * <pre><code>
&#47;/ This code will generate a layout table that is 3 columns by 2 rows
&#47;/ with some spanning included.  The basic layout will be:
&#47;/ +--------+-----------------+
&#47;/ |   A    |   B             |
&#47;/ |        |--------+--------|
&#47;/ |        |   C    |   D    |
&#47;/ +--------+--------+--------+
var table = new ext.Panel({
    title&#58; 'Table Layout',
    layout&#58;'table',
    defaults&#58; {
        &#47;/ applied to each contained panel
        bodyStyle&#58;'padding:20px'
    },
    layoutConfig&#58; {
        &#47;/ The total column count must be specified here
        columns&#58; 3
    },
    items&#58; [{
        html&#58; '&lt;p&gt;Cell A content&lt;/p&gt;',
        rowspan&#58; 2
    },{
        html&#58; '&lt;p&gt;Cell B content&lt;/p&gt;',
        colspan&#58; 2
    },{
        html&#58; '&lt;p&gt;Cell C content&lt;/p&gt;',
        cellCls&#58; 'highlight'
    },{
        html&#58; '&lt;p&gt;Cell D content&lt;/p&gt;'
    }]
});
</code></pre>
 */
    public class TableLayout extends ContainerLayout {
/**
     * @cfg {Number} columns
     * The total number of columns to create in the table for this layout.  If not specified, all Components added to
     * this layout will be rendered into a single row using one column per Component.
     */
    /**
     * @cfg {Object} tableAttrs
     * <p>An object containing properties which are added to the <b class='link' title='ext.DomHelper'>DomHelper</b> specification
     * used to create the layout's <code>&lt;table&gt;</code> element. Example:</p><pre><code>
{
    xtype&#58; 'panel',
    layout&#58; 'table',
    layoutConfig&#58; {
        tableAttrs&#58; {
        	style&#58; {
        		width&#58; '100%'
        	}
        },
        columns&#58; 3
    }
}</code></pre>
     */
    public var tableAttrs : Object;
    override protected native function setContainer(ct) : void;
    override protected native function onLayout(ct, target) : void;
    protected native function getRow(index) : void;
    protected native function getNextCell(c) : void;
    protected native function getNextNonSpan(colIndex, rowIndex) : void;
    override protected native function renderItem(c, position, target) : void;
    override protected native function isValidParent(c, target) : void;
    /**
     * @property activeItem
     * @hide
     */
}}
