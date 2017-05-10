import XCTest
import MKTCore

class Ex02Tests: XCTestCase {

    func test00ShouldInitializeMutableProperty() throws {
        try XCTAssertEqual(3, shouldInitializeMutableProperty())
    }

    func test01ShouldInitializeImmutableProperty() throws {
        try XCTAssertEqual(2, shouldInitializeImmutableProperty())
    }

    func test02ShouldAddCustomGetterAndSetters() throws {
        var position = Position(1, 2)
        position.posX = 3

        XCTAssertEqual(position.posX, 3)

        position.posX = -2
        XCTAssertEqual(position.posX, -1)

        XCTAssertEqual(Position(0, -2).posY, -1)
    }

    func test03ShouldReturnAPair() throws {
        let pair = try shouldReturnPairOfIdAndName(Position(1, 2))
        XCTAssertEqual(pair._0, 1)
        XCTAssertEqual(pair._1, 2)
    }

    static var allTests : [(String, (Ex02Tests) -> () throws -> Void)] {
        return [
            ("test00ShouldInitializeMutableProperty", test00ShouldInitializeMutableProperty),
            ("test01ShouldInitializeImmutableProperty", test01ShouldInitializeImmutableProperty),
            ("test03ShouldReturnAPair", test03ShouldReturnAPair)
        ]
    }

}
