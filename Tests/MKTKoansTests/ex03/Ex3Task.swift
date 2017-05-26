import MKTCore
import MKTUtils

/**
 * Exercise 3 : Nil & Safe Cast.
 *
 * Read About https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TypeCasting.html
 */

/**
 * return the player score or 0 using one line syntax and if operator (optional binding)
 */
func getPlayerScoreUsingIf(_ player: Player?) throws -> Int {
    return try Todo()
}

/**
 * return the player score or 0 using one line syntax with elvis operators (optional chaining and coalescing operator)
 */
func getPlayerScoreUsingElvis(_ player: Player?) throws -> Int {
    return try Todo()
}

class UnwrapError : Error {}

/**
 * Maybe your convinced that the player exists, and he have a score. (unconditional unwrapping)
 * return the player score.
 * Note: this is dangerous !
 *       you may throw an UnwrapError
 */
 @discardableResult
func trustMeAndReturnScore(_ player: Player?) throws -> Int {
    return try Todo()
}

/**
 * Cast the @param arg to Int and return its value or 0 if it's not an Int
 */
func anyToInt(_ arg: Any?) throws -> Int {
     return try Todo()
}
