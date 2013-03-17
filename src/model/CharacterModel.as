/**
 * User: thomasgillis
 * Date: 2013-03-12
 * Email: bardic.knowledge@gmail.com
 */
package model {
public class CharacterModel {
    private var _characterStr:int = 0;
    private var _characterDex:int = 0;
    private var _characterCon:int = 0;
    private var _characterInt:int = 0;
    private var _characterWis:int = 0;
    private var _characterCha:int = 0;

    public function CharacterModel() {
    }

    public function get strength():int {
        return _characterStr;
    }

    public function set strength(value:int):void {
        _characterStr = value;
    }

    public function get dexterity():int {
        return _characterDex;
    }

    public function set dexterity(value:int):void {
        _characterDex = value;
    }

    public function get constitution():int {
        return _characterCon;
    }

    public function set constitution(value:int):void {
        _characterCon = value;
    }

    public function get intelligence():int {
        return _characterInt;
    }

    public function set intelligence(value:int):void {
        _characterInt = value;
    }

    public function get wisdom():int {
        return _characterWis;
    }

    public function set wisdom(value:int):void {
        _characterWis = value;
    }

    public function get charisma():int {
        return _characterCha;
    }

    public function set charisma(value:int):void {
        _characterCha = value;
    }
}
}
