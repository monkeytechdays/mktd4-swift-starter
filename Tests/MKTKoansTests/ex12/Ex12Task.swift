import MKTCore
import MKTUtils

/**
 * Exercise 12: Exceptions and type Alias
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ErrorHandling.html
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Declarations.html
 *
 */

/**
 * Consider this Error and that TypeAlias
 */

class FormatException : Error {}

typealias NANException = FormatException

/**
 * Complete the parseInt
 */
@discardableResult
func parseInt(_ value: String) throws -> Int {
    return try Todo()
}

/**
 * Complete the parseInt with an alternative
 */
func parseInt(_ value: String, otherwise:Int) throws -> Int {
    return try Todo()
}
