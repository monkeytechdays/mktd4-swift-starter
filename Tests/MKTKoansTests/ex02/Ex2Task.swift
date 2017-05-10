import MKTCore
import MKTCore

/**
 * Exercise 2 : Fields, Properties, Declaration, Destructuring declaration
 */

/**
 * Initialize an mutable property.
 */
func shouldInitializeMutableProperty() throws -> Int {
    /* Create a variable equal to 2 and modify it to 3 */
    var a = 2
    a = 3
    return a
}

/**
 * Initialize an immutable property.
 */
func shouldInitializeImmutableProperty() throws -> Int {
    /* Try to create a constant equal to 2 and modify it to 3 */
    let a = 2
    // a = 3 won't compile
    return a
}


/**
 * Read about Getters and Setters
 *
 * Add a custom setter for posX to expose posX as an Integer >=0 if _posX >=0 or -1
 * Add a custom getter for posY to expose posY as an Integer >=0 if _posY >=0 or -1
 */
struct Position : Equatable {
    private var _posX : Int
    private var _posY : Int

    var posX : Int {
        get {
            return self._posX
        }
        set(v) {
            if v >= 0 {
                self._posX = v
            } else {
                self._posX = -1
            }
        }
    }

    var posY : Int {
        get {
            if self._posY >= 0 {
                return self._posY
            } else {
                return -1
            }
        }
    }

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
func shouldReturnPairOfIdAndName(_ position: Position) throws -> Pair<Int, Int> {
    let (posX, posY) = position.tuple()
    return Pair(posX, posY)
}
