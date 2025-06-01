package equality.macros;

import haxe.macro.Context;

class EqualityMacro {
    public static function build() {
        #if macro
        var fields = Context.getBuildFields();
        return fields;
        #else
        return [];
        #end
    }
}