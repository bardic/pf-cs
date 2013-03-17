/**
 * User: thomasgillis
 * Date: 2013-03-11
 * Email: bardic.knowledge@gmail.com
 */
package {
import model.CharacterModel;

import org.swiftsuspenders.Injector;

import robotlegs.bender.extensions.contextView.ContextView;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;

import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;

import robotlegs.bender.framework.api.IConfig;

import views.main.MainMediator;

import views.main.MainView;

public class AppConfig implements  IConfig{
    [Inject]
    public var injector:Injector;

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var commandMap:IEventCommandMap;

    [Inject]
    public var contextView:ContextView;

    public function configure():void
    {

        mediatorMap.map(MainView).toMediator(MainMediator);
        injector.map(CharacterModel).asSingleton();

        //mediatorMap.map(UserProfileView).toMediator(UserProfileMediator);

        //commandMap.map(UserEvent.SIGN_IN).toCommand(UserSignInCommand);

        // The "view" property is a DisplayObjectContainer reference.
        // If this was a Flex application we would need to cast it
        // as an IVisualElementContainer and call addElement().
        //contextView.view.addChild(new MainView());
    }

}
}
