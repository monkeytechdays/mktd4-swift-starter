import MKTCore
import MKTUtils

/**
 * Exercise 9: Enumeration an pattern matching
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html#//apple_ref/doc/uid/TP40014097-CH12-ID145
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Patterns.html#//apple_ref/doc/uid/TP40014097-CH36-ID419
 */

/**
 * Using when expression return,
 * 0     -> NORTH,
 * 1-2   -> SOUTH,
 * 3     -> WEST,
 * 4     -> EAST,
 * 5-6   -> NONE;
 * other -> null
 */
func findMoveUsingInt(_ value:Int) throws -> Direction? {
    switch (value) {
    case 0: return .NORTH
    case 1...2: return .SOUTH
    case 3: return .WEST
    case 4: return .EAST
    case 5...6: return .NONE
    default: return nil
    }
}

/**
 * Using When expression return the relevant Integer
 */

 indirect enum Expr {
    case Num(Int)
    case Sum(Expr,Expr)
 }

func eval(_ expr: Expr) throws -> Int {
    switch (expr) {
    case .Num(let value): return value
    case .Sum(let left, let right): return try eval(left) + eval(right)
    }
}