import MKTCore

/**
 * Exercise 6: Arguments, Default, Named
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html
 */

/**
 * Complete the function to use default arguments value.
 */
func joinOptions(_ options: [String], prefix:String="", separator:String=", ", postfix:String="") throws -> String {
    return "\(prefix)\(options.joined(separator:separator))\(postfix)"
}

/**
 * Write the previous function to use var arguments.
 */
func joinVarArgsOptions(_ options: String..., prefix:String="", separator:String=", ", postfix:String="") throws -> String {
    return try joinOptions(options, prefix:prefix, separator:separator, postfix:postfix)
}
