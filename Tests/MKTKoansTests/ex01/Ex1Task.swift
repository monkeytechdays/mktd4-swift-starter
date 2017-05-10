import MKTCore

/**
 * Exercise 1 : Classes, Enumerations, Object and companions
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html
 */

/**
 * Task 1:
 * Write the swift struct equivalent to this java class
 *
 * public class TestPlayer {
 *    private final int id;
 *    private final String name;
 *
 *    public Player(int id, String name) {
 *        this.id = id;
 *        this.name = name;
 *    }
 *
 *    public String getName() {
 *        return name;
 *    }
 *
 *   public int getId() {
 *        return id;
 *   }
 * }
 */

struct TestPlayer : Equatable {
    let id : Int
    let name : String
}

/**
 * Task 2:
 * Add Equatable capability to the struct Player
 */

func ==(lhs: TestPlayer, rhs: TestPlayer) -> Bool {
    return lhs.id == rhs.id && lhs.name == rhs.name
}

/**
 * Task 3:
 * Consider that enum. Add a "static" function to find the Direction by the letter.
 * And here is the function : fun from(_ value: String) -> Direction? { return Direction(rawValue:value) }
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html
 */

enum Direction : String {
    case NORTH = "N"
    case SOUTH = "S"
    case WEST = "W"
    case EAST = "E"
    case NONE = "O"

    static func from(_ value: String) -> Direction? {
        return Direction(rawValue:value)
    }
}
