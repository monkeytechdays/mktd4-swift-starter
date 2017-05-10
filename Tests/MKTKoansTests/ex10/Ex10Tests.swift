import XCTest
import MKTCore
import MKTUtils

class Ex10Tests: XCTestCase {

    func test00PositionIsValid(){
        XCTAssertTrue(Position(0,0).isValid)
        XCTAssertFalse(Position(-1,0).isValid)
        XCTAssertFalse(Position(0,-1).isValid)
    }

    static var allTests : [(String, (Ex10Tests) -> () throws -> Void)] {
        return [
            ("test00PositionIsValid", test00PositionIsValid)
        ]
    }

}
