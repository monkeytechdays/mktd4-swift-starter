import XCTest
import MKTCore
import MKTUtils

class Ex11Tests: XCTestCase {

    func test00AddMoveToPosition(){
        XCTAssertEqual(Position(0,0), Position(0,1) + .NORTH)
        XCTAssertEqual(Position(0,1), Position(0,0) + .SOUTH)
        XCTAssertEqual(Position(1,0), Position(0,0) + .EAST)
        XCTAssertEqual(Position(0,0), Position(1,0) + .WEST)
        XCTAssertEqual(Position(0,0), Position(0,0) + .NONE)
    }

    static var allTests : [(String, (Ex11Tests) -> () throws -> Void)] {
        return [
            ("test00AddMoveToPosition", test00AddMoveToPosition)
        ]
    }

}
