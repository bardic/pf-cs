/**
 * User: tgillis
 * Date: 2013-03-21
 * Email: thomas.gillis@teamspace.ca
 */
package events {
import flash.events.Event;

public class AppEvent extends Event {
    private var data:Object;
    public static const SAVE:String = "SAVE";
    public function AppEvent(type:String, data:Object=null, bubbles:Boolean = false, cancelable:Boolean = false){
        super(type, bubbles, cancelable);
        this.data = data;
    }

    override public function clone():Event {
        return new AppEvent(type, data, bubbles, cancelable);
    }
}
}
