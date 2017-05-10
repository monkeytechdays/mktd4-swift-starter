import MKTCore
import MKTUtils

/**
 * Exercise 14: Guard, early exit and optional
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html
 */

/**
 * Create a player from a valid  dictionary ["id":Int,"name":String]; nil otherwise
 */
func createPlayerFromDictionary(_ dictionary: [String:Any]) throws -> Player? {
    guard let id = dictionary["id"] as? Int,
          let name = dictionary["name"] as? String
    else {
        return nil
    }

    return Player(id,name,nil)
}
