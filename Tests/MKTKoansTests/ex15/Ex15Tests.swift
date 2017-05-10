import XCTest
import MKTCore
import MKTUtils

class Ex15Tests: XCTestCase {

    func test00ShouldCreateAPlayer() {
        let player = Player(["id":1,"name":"John Doe"])
        XCTAssertEqual(1, player?.id)
        XCTAssertEqual("John Doe", player?.name)
    }

    func test01ShouldNotCreateAPlayer() {
        let player = Player(["name":"John Doe"])
        XCTAssertNil(player)
    }

    static var allTests : [(String, (Ex15Tests) -> () throws -> Void)] {
        return [
            ("test00ShouldCreateAPlayer",test00ShouldCreateAPlayer),
            ("test01ShouldNotCreateAPlayer",test01ShouldNotCreateAPlayer)
        ]
    }

}
