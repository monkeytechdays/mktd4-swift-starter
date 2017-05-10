import XCTest
import MKTCore
import MKTUtils

class Ex14Tests: XCTestCase {

    func test00ShouldCreateAPlayer() throws {
        let player = try createPlayerFromDictionary(["id":1, "name":"John Doe"])
        XCTAssertEqual(1, player?.id)
        XCTAssertEqual("John Doe", player?.name)
    }

    func test01ShouldNotCreateAPlayer() throws {
        let player = try createPlayerFromDictionary(["name":"John Doe"])
        XCTAssertNil(player)
    }

    static var allTests : [(String, (Ex14Tests) -> () throws -> Void)] {
        return [
            ("test00ShouldCreateAPlayer",test00ShouldCreateAPlayer),
            ("test01ShouldNotCreateAPlayer",test01ShouldNotCreateAPlayer)
        ]
    }

}
