import XCTest
import MKTCore
import MKTUtils

class Ex04Tests: XCTestCase {

    func test00ShouldReturnLorem() throws {
        try XCTAssertEqual(getLoremIpsum(), "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed non risus.Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.")
    }

    func test01ShouldReturnPlayerScore() throws {
        try XCTAssertEqual(getPlayerScoreAsString(Player(1, "John", 10)), "The score for John is 10")
    }

    static var allTests : [(String, (Ex04Tests) -> () throws -> Void)] {
        return [
            ("test00ShouldReturnLorem", test00ShouldReturnLorem),
            ("test01ShouldReturnPlayerScore", test01ShouldReturnPlayerScore)
        ]
    }

}
