package;

import haxe.Exception;

class Assert {
    public static function assert(condition:Bool, message:String) {
        if(!condition)
            throw new Exception(message);
    }
}