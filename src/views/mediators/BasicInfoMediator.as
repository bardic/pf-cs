/**
 * User: tgillis
 * Date: 2013-03-21
 * Email: thomas.gillis@teamspace.ca
 */
package views.mediators {
import events.AppEvent;
import events.CharacterEvent;

import robotlegs.bender.bundles.mvcs.Mediator;

import views.BasicInfoView;

public class BasicInfoMediator extends Mediator {
    [Inject]public var view:BasicInfoView;

    override public function initialize():void {
        view.addEventListener(AppEvent.SAVE, onSave)
    }

    private function onSave(ev:AppEvent):void {
        dispatch(new CharacterEvent(CharacterEvent.SAVE, {test:"Test"}));
    }
}
}
