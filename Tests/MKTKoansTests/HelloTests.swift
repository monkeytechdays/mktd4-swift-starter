import XCTest

class TautologyTests: XCTestCase {

    func testTautology() {
        XCTAssertEqual(true,true)
    }

    static var allTests : [(String, (TautologyTests) -> () throws -> Void)] {
        return [
            ("testTautology", testTautology)
        ]
    }
}
