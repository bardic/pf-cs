/**
 * User: thomasgillis
 * Date: 2013-03-12
 * Email: bardic.knowledge@gmail.com
 */
package model {
import util.StatUtil;

import vo.CharacterClass;
import vo.CharacterRace;
import vo.CharacterSize;

public class CharacterModel {
    //INFO
    private var _characterName:String;
    private var _characterRace:CharacterRace;    //is a vo since this attribute has other implications that will affect character
    private var _characterClass:CharacterClass;
    private var _level:int;
    private var _alignment:String;
    private var _deity:String;
    private var _gender:String;
    private var _age:int;
    private var _size:CharacterSize;
    private var _height:Number;
    private var _weight:Number;
    private var _eyeColor:String;

    private var _hairColor:String;
    private var _skinColor:String;
    private var _xpPoint:int;
    private var _languages:Array; //[] of strings

    //CORE STATS
    private var _characterStr:int = 0;
    private var _characterDex:int = 0;
    private var _characterCon:int = 0;
    private var _characterInt:int = 0;
    private var _characterWis:int = 0;
    private var _characterCha:int = 0;

    //TODO: Currently mod calc's are in stat setters. Consider moving to mod getter
    private var _strMod:int;
    private var _dexMod:int;
    private var _conMod:int;
    private var _intMod:int;
    private var _wisMod:int;

    private var _chaMod:int;

    //OTHER STATS
    private var _maxHP:int;
    private var _currentHP:int;
    private var _initiative:int;
    private var _initiativeMisc:int;
    private var _landSpeed:int;
    private var _armorClass:int;
    private var _armorClassMisc:int;

    //SAVING THROWS
    private var _fort:int;
    private var _fortMagic:int;
    private var _fortMisc:int;
    private var _fortTemp:int;
    private var _fortConditionial:int;

    private var _reflex:int;
    private var _reflexMagic:int;
    private var _reflexMisc:int;
    private var _reflexTemp:int;
    private var _reflexConditionial:int;

    private var _will:int;
    private var _willMagic:int;
    private var _willMisc:int;
    private var _willTemp:int;
    private var _willConditionial:int;

    //ATTACK BONUSES
    private var _melee:int;
    private var _meleeMisc:int;
    private var _ranged:int;
    private var _rangedMisc:int;

    public function CharacterModel() {
    }


    public function get characterName():String {
        return _characterName;
    }

    public function set characterName(value:String):void {
        _characterName = value;
    }

    public function get characterRace():CharacterRace {
        return _characterRace;
    }

    public function set characterRace(value:CharacterRace):void {
        _characterRace = value;
    }

    public function get characterClass():CharacterClass {
        return _characterClass;
    }

    public function set characterClass(value:CharacterClass):void {
        _characterClass = value;
    }

    public function get level():int {
        return _level;
    }

    public function set level(value:int):void {
        _level = value;
    }

    public function get alignment():String {
        return _alignment;
    }

    public function set alignment(value:String):void {
        _alignment = value;
    }

    public function get deity():String {
        return _deity;
    }

    public function set deity(value:String):void {
        _deity = value;
    }

    public function get gender():String {
        return _gender;
    }

    public function set gender(value:String):void {
        _gender = value;
    }

    public function get age():int {
        return _age;
    }

    public function set age(value:int):void {
        _age = value;
    }

    public function get size():CharacterSize {
        return _size;
    }

    public function set size(value:CharacterSize):void {
        _size = value;
    }

    public function get height():Number {
        return _height;
    }

    public function set height(value:Number):void {
        _height = value;
    }

    public function get weight():Number {
        return _weight;
    }

    public function set weight(value:Number):void {
        _weight = value;
    }

    public function get eyeColor():String {
        return _eyeColor;
    }

    public function set eyeColor(value:String):void {
        _eyeColor = value;
    }

    public function get hairColor():String {
        return _hairColor;
    }

    public function set hairColor(value:String):void {
        _hairColor = value;
    }

    public function get skinColor():String {
        return _skinColor;
    }

    public function set skinColor(value:String):void {
        _skinColor = value;
    }

    public function get xpPoint():int {
        return _xpPoint;
    }

    public function set xpPoint(value:int):void {
        _xpPoint = value;
    }

    public function get languages():Array {
        return _languages;
    }

    public function set languages(value:Array):void {
        _languages = value;
    }

    public function get strength():int {
        return _characterStr;
    }

    public function set strength(value:int):void {
        _characterStr = value;
        _strMod = StatUtil.getStatMod(value);
    }

    public function get dexterity():int {
        return _characterDex;
    }

    public function set dexterity(value:int):void {
        _characterDex = value;
        _dexMod = StatUtil.getStatMod(value);
    }

    public function get constitution():int {
        return _characterCon;
    }

    public function set constitution(value:int):void {
        _characterCon = value;
        _conMod = StatUtil.getStatMod(value);
    }

    public function get intelligence():int {
        return _characterInt;
    }

    public function set intelligence(value:int):void {
        _characterInt = value;
        _intMod = StatUtil.getStatMod(value);
    }

    public function get wisdom():int {
        return _characterWis;
    }

    public function set wisdom(value:int):void {
        _characterWis = value;
        _wisMod = StatUtil.getStatMod(value);
    }

    public function get charisma():int {
        return _characterCha;
    }

    public function set charisma(value:int):void {
        _characterCha = value;
        _chaMod = StatUtil.getStatMod(value);
    }

    public function get strMod():int {
        return _strMod;
    }

    public function set strMod(value:int):void {
        _strMod = value;
    }

    public function get dexMod():int {
        return _dexMod;
    }

    public function set dexMod(value:int):void {
        _dexMod = value;
    }

    public function get conMod():int {
        return _conMod;
    }

    public function set conMod(value:int):void {
        _conMod = value;
    }

    public function get intMod():int {
        return _intMod;
    }

    public function set intMod(value:int):void {
        _intMod = value;
    }

    public function get wisMod():int {
        return _wisMod;
    }

    public function set wisMod(value:int):void {
        _wisMod = value;
    }

    public function get chaMod():int {
        return _chaMod;
    }

    public function set chaMod(value:int):void {
        _chaMod = value;
    }

    public function get maxHP():int {
        return _maxHP;
    }

    public function set maxHP(value:int):void {
        _maxHP = value;
    }

    public function get currentHP():int {
        return _currentHP;
    }

    public function set currentHP(value:int):void {
        _currentHP = value;
    }

    public function get initiative():int {
        return _initiative;
    }

    public function set initiative(value:int):void {
        _initiative = value;
    }

    public function get initiativeMisc():int {
        return _initiativeMisc;
    }

    public function set initiativeMisc(value:int):void {
        _initiativeMisc = value;
    }

    public function get landSpeed():int {
        return _landSpeed;
    }

    public function set landSpeed(value:int):void {
        _landSpeed = value;
    }

    public function get armorClass():int {
        return _armorClass;
    }

    public function set armorClass(value:int):void {
        _armorClass = value;
    }

    public function get armorClassMisc():int {
        return _armorClassMisc;
    }

    public function set armorClassMisc(value:int):void {
        _armorClassMisc = value;
    }

    public function get fort():int {
        return _fort;
    }

    public function set fort(value:int):void {
        _fort = value;
    }

    public function get fortMagic():int {
        return _fortMagic;
    }

    public function set fortMagic(value:int):void {
        _fortMagic = value;
    }

    public function get fortMisc():int {
        return _fortMisc;
    }

    public function set fortMisc(value:int):void {
        _fortMisc = value;
    }

    public function get fortTemp():int {
        return _fortTemp;
    }

    public function set fortTemp(value:int):void {
        _fortTemp = value;
    }

    public function get fortConditionial():int {
        return _fortConditionial;
    }

    public function set fortConditionial(value:int):void {
        _fortConditionial = value;
    }

    public function get reflex():int {
        return _reflex;
    }

    public function set reflex(value:int):void {
        _reflex = value;
    }

    public function get reflexMagic():int {
        return _reflexMagic;
    }

    public function set reflexMagic(value:int):void {
        _reflexMagic = value;
    }

    public function get reflexMisc():int {
        return _reflexMisc;
    }

    public function set reflexMisc(value:int):void {
        _reflexMisc = value;
    }

    public function get reflexTemp():int {
        return _reflexTemp;
    }

    public function set reflexTemp(value:int):void {
        _reflexTemp = value;
    }

    public function get reflexConditionial():int {
        return _reflexConditionial;
    }

    public function set reflexConditionial(value:int):void {
        _reflexConditionial = value;
    }

    public function get will():int {
        return _will;
    }

    public function set will(value:int):void {
        _will = value;
    }

    public function get willMagic():int {
        return _willMagic;
    }

    public function set willMagic(value:int):void {
        _willMagic = value;
    }

    public function get willMisc():int {
        return _willMisc;
    }

    public function set willMisc(value:int):void {
        _willMisc = value;
    }

    public function get willTemp():int {
        return _willTemp;
    }

    public function set willTemp(value:int):void {
        _willTemp = value;
    }

    public function get willConditionial():int {
        return _willConditionial;
    }

    public function set willConditionial(value:int):void {
        _willConditionial = value;
    }

    public function get melee():int {
        return _melee;
    }

    public function set melee(value:int):void {
        _melee = value;
    }

    public function get meleeMisc():int {
        return _meleeMisc;
    }

    public function set meleeMisc(value:int):void {
        _meleeMisc = value;
    }

    public function get ranged():int {
        return _ranged;
    }

    public function set ranged(value:int):void {
        _ranged = value;
    }

    public function get rangedMisc():int {
        return _rangedMisc;
    }

    public function set rangedMisc(value:int):void {
        _rangedMisc = value;
    }
}
}
