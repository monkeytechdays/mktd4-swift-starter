import MKTCore
import MKTUtils

/**
 * Exercise 3 : Nil & Safe Cast.
 *
 * Read About https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TypeCasting.html
 */

/**
 * return the player score or 0 using one line syntax and if operator
 */
func getPlayerScoreUsingIf(_ player: Player?) throws -> Int {
    if let score = player?.score {
        return score
    }

    return 0
}

/**
 * return the player score or 0 using one line syntax and elvis operator
 */
func getPlayerScoreUsingElvis(_ player: Player?) throws -> Int {
    return player?.score ?? 0
}

class UnwrapError : Error {}

/**
 * return the player score.
 */
 @discardableResult
func trustMeAndReturnScore(_ player: Player?) throws -> Int {
    if let score = player?.score {
        return score;
    }

    throw UnwrapError()
}

/**
 * Cast the @param arg to Int and return its value or 0 if it's not an Int
 */
func anyToInt(_ arg: Any?) throws -> Int {
    return arg as? Int ?? 0
}
