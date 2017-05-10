import MKTCore
import MKTUtils

/**
 *
 * Exercise 4 : String and String Templates
 * Read https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html
 */

/**
 * returns
 *   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
 *   "Sed non risus. "
 *   "Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor."
 *
 * using 1 line per sentence
 *
 * Read https://github.com/apple/swift-evolution/blob/master/proposals/0168-multi-line-string-literals.md
 */
func getLoremIpsum() throws -> String {
    return
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit." +
        "Sed non risus." +
        "Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor."
}

/**
 * Return the string "The score for %playerName% is %playerScore%
 * return 0 for score if score is null
 */
func getPlayerScoreAsString(_ player: Player) throws -> String {
    return "The score for \(player.name) is \(player.score ?? 0)"
}
