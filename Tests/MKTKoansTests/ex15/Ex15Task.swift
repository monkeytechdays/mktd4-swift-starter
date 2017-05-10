import MKTCore
import MKTUtils

/**
 * Exercise 15: Class and init
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html
 */

/**
 * Add a player init able to create a Player from a valid dictionary ["id":Int,"name":String]; nil otherwise
 */
 extension Player {
     init?(_ dictionary: [String:Any]) {
         guard let id = dictionary["id"] as? Int,
               let name = dictionary["name"] as? String
         else {
             return nil
         }

         self.init(id,name,nil)
     }
}
