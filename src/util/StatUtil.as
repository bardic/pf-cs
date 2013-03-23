/**
 * User: tgillis
 * Date: 2013-03-19
 * Email: thomas.gillis@teamspace.ca
 */
package util {
public class StatUtil {
    public static function getStatMod(statValue:int):int{
        var mod:int = Math.floor((statValue - 10)/2);
        return mod;
    }
}
}
