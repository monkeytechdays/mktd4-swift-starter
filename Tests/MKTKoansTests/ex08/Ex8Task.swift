import MKTCore
import MKTUtils

/**
 * Exercise 8: Collections
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html
 */

/**
 * Create an empty set
 */
func getEmptySetOfPlayers() throws -> Set<Player> {
    return try Todo()
}

/**
 * Create an empty array
 */
func getEmptyListOfPlayers() throws -> [Player] {
    return try Todo()
}
/**
 * Filter players with score different from 0.
 */
func getPlayersWithScore0(_ players: [Player]) throws -> [Player] {
    return try Todo()
}

/**
 * Return true if all players have a score not null
 */
func checkAllPlayersHaveAScore(_ players: [Player]) throws -> Bool {
    return try Todo()
}

/**
 * Return true if there is at least one player with the score 10
 */
func checkContainsPlayerWithScore10(_ players: [Player]) throws -> Bool {
    return try Todo()
}

/**
 * Return the number of players with the score 20
 */
func countPlayersWithScore20(_ players: [Player]) throws -> Int {
    return try Todo()
}

/**
 * Return the first player with the score @param score, or null if there is none
 */
func findAnyPlayerWithScore(_ players: [Player], _ score: Int) throws -> Player? {
    return try Todo()
}

/**
 * Return the players names without using for or while
 */
func getPlayersNames(_ players: [Player]) throws -> [String] {
    return try Todo()
}

struct Game {
    let players: [Player]
}

/**
 * Return the players names  from games without using for or while
 */
func getAllPlayers(_ games: [Game]) throws -> [Player] {
    return try Todo()
}
