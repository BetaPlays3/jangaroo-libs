package ext.config {


/**
 * The <a href="Ext.direct.RemotingProvider.html">RemotingProvider</a> exposes access to server side methods on the client (a remote procedure call (RPC) type of connection where the client can initiate a procedure on the server).
 <p>This allows for code to be organized in a fashion that is maintainable, while providing a clear path between client and server, something that is not always apparent when using URLs.</p><p>To accomplish this the server-side needs to describe what classes and methods are available on the client-side. This configuration will typically be outputted by the server-side Ext.Direct stack when the API description is built.</p>
 *
 * <p>This class serves as a
 * typed config object for constructor of class RemotingProvider.</p>
 *
 * <p>Copyright &#169; 2011 Sencha Inc.</p>
 * @see ext.direct.RemotingProvider
 */
[ExtConfig(target="ext.direct.RemotingProvider")]
public class remotingprovider extends jsonprovider {

  public function remotingprovider(config:Object = null) {

    super(config);
  }


  /**
   Object literal defining the server side actions and methods. For example, if the Provider is configured with: <pre><code>"actions":{ // each property within the 'actions' object represents a server side Class
   "TestAction":[ // array of methods within each server side Class to be
   {              // stubbed out on client
   "name":"doEcho",
   "len":1
   },{
   "name":"multiply",// name of method
   "len":2           // The number of parameters that will be used to create an
   // array of data to send to the server side function.
   // Ensure the server sends back a Number, not a String.
   },{
   "name":"doForm",
   "formHandler":true, // direct the client to use specialized form handling method
   "len":1
   }]
   }
   </code></pre><p>Note that a Store is not required, a server method can be called at any time. In the following example a <b>client side</b> handler is used to call the server side method "multiply" in the server-side "TestAction" Class:</p><pre><code>TestAction.multiply(
   2, 4, // pass two arguments to server, so specify len=2
   // callback function after the server is called
   // result: the result returned by the server
   //      e: Ext.Direct.RemotingEvent object
   function(result, e){
   var t = e.getTransaction();
   var action = t.action; // server side Class called
   var method = t.method; // server side method called
   if(e.status){
   var answer = Ext.encode(result); // 8

   }else{
   var msg = e.message; // failure message
   }
   }
   );
   </code></pre>In the example above, the server side "multiply" function will be passed two arguments (2 and 4). The "multiply" method should return the value 8 which will be available as the <tt>result</tt> in the example above.
   */
  public native function get actions():Object;

  /**
   * @private
   */
  public native function set actions(value:Object):void;

  /**
   <tt>true</tt> or <tt>false</tt> to enable or disable combining of method calls. If a number is specified this is the amount of time in milliseconds to wait before sending a batched request (defaults to <tt>10</tt>).
   <br/><p>Calls which are received within the specified timeframe will be concatenated together and sent in a single request, optimizing the application by reducing the amount of round trips that have to be made to the server.</p>
   */
  public native function get enableBuffer():*;

  /**
   * @private
   */
  public native function set enableBuffer(value:*):void;

  /**
   Specify which param will hold the arguments for the method. Defaults to <tt>'data'</tt>.
   */
  public native function get enableUrlEncode():String;

  /**
   * @private
   */
  public native function set enableUrlEncode(value:String):void;

  /**
   Number of times to re-attempt delivery on failure of a call. Defaults to <tt>1</tt>.
   */
  public native function get maxRetries():Number;

  /**
   * @private
   */
  public native function set maxRetries(value:Number):void;

  /**
   Namespace for the Remoting Provider (defaults to the browser global scope of <i>window</i>). Explicitly specify the namespace Object, or specify a String to have a <a href="output/Ext.html#Ext-namespace">namespace created</a> implicitly.
   */
  public native function get namespace():*;

  /**
   * @private
   */
  public native function set namespace(value:*):void;

  /**
   The timeout to use for each request. Defaults to <tt>undefined</tt>.
   */
  public native function get timeout():Number;

  /**
   * @private
   */
  public native function set timeout(value:Number):void;

  /**
   <b>Required</b>. The url to connect to the <a href="Ext.Direct.html">Ext.Direct</a> server-side router.
   */
  public native function get url():String;

  /**
   * @private
   */
  public native function set url(value:String):void;


}
}
    