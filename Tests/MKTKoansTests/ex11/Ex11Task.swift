import MKTCore
import MKTUtils

/**
 * Exercise 11: Operator Overloading
 *
 * Read about <a href="https://kotlinlang.org/docs/reference/operator-overloading.html">Operator overloading</a>
 *
 */

/**
 * Add a function to the class Position to be able to write Position(0,0) + Direction.SOUTH == Position(0,1)
 * etc.
 */

extension Position {
    private func add(_ move:Direction) -> Position {
        switch move {
        case .WEST: return Position(posX - 1, posY)
        case .EAST: return Position(posX + 1, posY)
        case .NORTH: return Position(posX, posY - 1)
        case .SOUTH: return Position(posX, posY + 1)
        case .NONE: return self
        }
    }

    static func +(position:Position, move:Direction) -> Position {
        return position.add(move)
    }
}
