import MKTCore
import MKTCore

/**
 * Exercise 2 : Fields, Properties, Declaration, Destructuring declaration
 */

/**
 * Initialize an mutable property.
 */
func shouldInitializeMutableProperty() throws -> Int {
    /* Create a variable 'a' equal to 2 and modify it to 3 */
    return try Todo() // Return value of 'a'
}

/**
 * Initialize an immutable property.
 */
func shouldInitializeImmutableProperty() throws -> Int {
    /* Try to create a constant 'a' equal to 2 and modify it to 3 */
    return try Todo() // Return value of 'a'
}

/**
 * Read about Getters and Setters
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html
 */
struct Position : Equatable {
    private var _posX : Int
    private var _posY : Int

    // TODO Add a custom setter for posX to update _posX as an Integer >=0 (use -1 is setter value < 0)
    //      the getter should return the _posX
    var posX : Int = 0 

    // TODO Add a custom getter for posY to expose posY as an Integer >=0 (use -1 is _poxY < 0)
    //      the setter should set the _posY
    var posY : Int = 0

    init(_ x: Int, _ y: Int) {
        self._posX = x
        self._posY = y
    }

    func tuple() -> (Int,Int) {
        return (self.posX, self.posY)
    }

    static func ==(lhs: Position, rhs: Position) -> Bool {
        return lhs.posX == rhs.posX && lhs.posY == rhs.posY
    }
}

struct Pair<L,R> {
    let _0 : L
    let _1 : R

    init(_ _0:L, _ _1:R) {
        self._0 = _0
        self._1 = _1
    }
}

/**
 * Add a specific method returning a pair
 */
func shouldReturnPairOfPosXAndPosY(_ position: Position) throws -> Pair<Int, Int> {
    return try Todo()
}
