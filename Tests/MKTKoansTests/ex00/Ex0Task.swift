import MKTCore

// Documentation : https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html

/**
 * Exercise 0 : Types, Declaration, Destructuring Declaration.
 */

/**
 * Return the Integer [0]
 */
func shouldReturn0() throws -> Int {
    return try Todo()
}

/**
 * Return the Integer [0] if isNull is false, [nil] otherwise
 */
func shouldReturn0OrNil(isNull:Bool) throws -> Int? {
    return try Todo()
}

/**
 * Return the string [OK]
 *
 * section Strings and Characters
 */
func shouldReturnStringOK() throws ->  String {
    return try Todo()
}

/**
 * Return the character [O]
 *
 * section Strings and Characters
 */
func shouldReturnCharacterO() throws ->  Character {
    return try Todo()
}

/**
 * Return a pair [(0,"1")]
 */
func shouldReturnPair() throws -> (Int, String) {
    return try Todo()
}

/**
 * Return first element of a pair calling .0
 *
 * section Tuple
 */
 func shouldReturnPairFirst(_ p:(Int,String)) throws -> Int {
    return try Todo()
 }

 /**
  * Return first element of a pair using destructuring Declaration
  *
  * section Tuple
  */
func shouldReturnPairSecond(_ p:(Int,String)) throws -> String {
    return try Todo()
}
