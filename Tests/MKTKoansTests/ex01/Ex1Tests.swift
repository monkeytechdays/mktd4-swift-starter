import XCTest
import MKTCore

class Ex01Tests: XCTestCase {

    func test00ClassShouldContainsIdAndName() {
        XCTAssertEqual(TestPlayer(id:1, name:"Player1").id, 1)
        XCTAssertEqual(TestPlayer(id:1, name:"Player1").name, "Player1")
    }

    func test01ClassShouldContainsEquals() {
        XCTAssertEqual(TestPlayer(id:1, name:"Player1"), TestPlayer(id:1, name:"Player1"))
    }

    func test02GetMoveFromLetter() {
        XCTAssertEqual(Direction.from("N"), Direction.NORTH)
    }

    static var allTests : [(String, (Ex01Tests) -> () throws -> Void)] {
        return [
            ("test00ClassShouldContainsIdAndName", test00ClassShouldContainsIdAndName),
            ("test01ClassShouldContainsEquals", test01ClassShouldContainsEquals),
            ("test02GetMoveFromLetter", test02GetMoveFromLetter)
        ]
    }
}
