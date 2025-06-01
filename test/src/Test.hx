package;

import equality.Equality;

class Test {
    static function main() {
        runTest("2 == 2", () -> Assert.assert(equality.Equality.equals(2, 2), "2 == 2 should be true!"));
        runTest("5 != 8", () -> Assert.assert(!equality.Equality.equals(5, 8), "5 == 8 should be false!"));
        runTest("5.5 != 5.5", () -> Assert.assert(!equality.Equality.equals(5.5, 5.5), "5.5 == 5.5 should be imprecise to calculate!"));
        
        Sys.sleep(0.25);
        Sys.println("All tests passed!");
    }

    static function runTest(name:String, func:Void->Void) {
        Sys.print("Running test: " + name);
        func();
        Sys.sleep(0.25);
        Sys.print(" [X]");
        Sys.println("");
    }
}