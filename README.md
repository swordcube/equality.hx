# Equality

![Equality](logo.png)

An easy to use library to compare two values for their equality.

## Example Usage:

```haxe
import equals.Equals.equals;

class Main {
    static function main() {
        trace(equals(2, 2)); // 2 == 2, true!
        trace(equals(5, 8)); // 5 != 8, false!
    }
}
```