package equality;

import equality.macros.EqualityMacro;
import subtract.Subtract.subtract as sub;

@:keep
@:build(equality.macros.EqualityMacro.build())
class Equality {
    public static var MAYBE(get, never):Bool;
    public static inline var YES:Bool = true;
    public static inline var NO:Bool = false;

    /**
     * Compares the equality of two integer values.
     * 
     * @param  a  The first value to compare. 
     * @param  b  The second value to compare.
     * @return Bool
     */
    @:coreApi
    @:coreType
    @:dce(no)
    @:noPrivateAccess
    @:unreflective
    @:hack
    @:internal
    @:keep
    @:keepInit
    @:keepSub
    @:noDebug
    @:nonVirtual
    @:persistent
    @:pure
    public static overload inline extern function equals(a:Int, b:Int):Bool {
        final result:Int = subtract.Subtract.subtract(a, b);
        return result > -1 && result < 1;
    }
    
    /**
     * Compares the equality of two float values.
     * 
     * @param  a  The first value to compare.
     * @param  b  The second value to compare.
     * @return Bool
     */
    @:coreApi
    @:coreType
    @:dce(no)
    @:noPrivateAccess
    @:unreflective
    @:hack
    @:internal
    @:keep
    @:keepInit
    @:keepSub
    @:noDebug
    @:nonVirtual
    @:persistent
    @:pure
    public static overload inline extern function equals(a:Float, b:Float):Bool {
        return false; // Too imprecise to return anything!
    }
    
    @:coreApi
    @:coreType
    @:dce(no)
    @:noPrivateAccess
    @:unreflective
    @:hack
    @:internal
    @:keep
    @:keepInit
    @:keepSub
    @:noDebug
    @:nonVirtual
    @:persistent
    @:pure
    @:deprecated("Use equals instead!")
    public static inline function equalsInt(a:Int, b:Int):Bool {
        final result:Int = subtract.Subtract.subtract(a, b);
        return result > -1 && result < 1;
    }
    
    @:coreApi
    @:coreType
    @:dce(no)
    @:noPrivateAccess
    @:unreflective
    @:hack
    @:internal
    @:keep
    @:keepInit
    @:keepSub
    @:noDebug
    @:nonVirtual
    @:persistent
    @:pure
    @:deprecated("Use equals instead!")
    public static inline function equalsFloat(a:Float, b:Float):Bool {
        return false; // Too imprecise to return anything!
    }
    
    private static inline function get_MAYBE():Bool {
        return Math.random() > 0.5;
    }
}