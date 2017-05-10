import XCTest
import MKTCore
import MKTUtils

class Ex03Tests: XCTestCase {

    func test00ScoreShouldBe0ForNullPlayer() throws {
        try XCTAssertEqual(0, getPlayerScoreUsingIf(nil))
        try XCTAssertEqual(0, getPlayerScoreUsingElvis(nil))
    }

    func test01ScoreShouldBe0ForNullScore() throws  {
        try XCTAssertEqual(0, getPlayerScoreUsingIf(Player(1, "Player 1", nil)))
        try XCTAssertEqual(0, getPlayerScoreUsingElvis(Player(1, "Player 1", nil)))
    }

    func test02ScoreShouldBe1For() throws {
        try XCTAssertEqual(1, getPlayerScoreUsingIf(Player(1, "Player 1", 1)))
        try XCTAssertEqual(1, getPlayerScoreUsingElvis(Player(1, "Player 1", 1)))
        try XCTAssertEqual(1, trustMeAndReturnScore(Player(1, "Player 1", 1)))
    }

    func test03ShouldEndWithError() throws {
        do {
            try trustMeAndReturnScore(nil)
            XCTAssertEqual(0, 1)
        } catch is UnwrapError {
            // OK ...
        }
    }

    func test04ShouldCastAnyValueAsInt() throws {
        try XCTAssertEqual(0, anyToInt("Text"))
        try XCTAssertEqual(0, anyToInt(nil))
        try XCTAssertEqual(10, anyToInt(10))
    }

    static var allTests : [(String, (Ex03Tests) -> () throws -> Void)] {
        return [
            ("test00ScoreShouldBe0ForNullPlayer",test00ScoreShouldBe0ForNullPlayer),
            ("test01ScoreShouldBe0ForNullScore",test01ScoreShouldBe0ForNullScore),
            ("test02ScoreShouldBe1For", test02ScoreShouldBe1For),
            ("test03ShouldEndWithError", test03ShouldEndWithError),
            ("test04ShouldCastAnyValueAsInt", test04ShouldCastAnyValueAsInt)
        ]
    }
}
