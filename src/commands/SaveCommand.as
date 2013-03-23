/**
 * User: tgillis
 * Date: 2013-03-21
 * Email: thomas.gillis@teamspace.ca
 */
package commands {
import events.CharacterEvent;

import model.CharacterModel;

import robotlegs.bender.bundles.mvcs.Command;

public class SaveCommand extends Command {
    [Inject]public var model:CharacterModel;
    [Inject]public var event:CharacterEvent;
    override public function execute():void {
        super.execute();
        trace(event.data.test);
    }
}
}
