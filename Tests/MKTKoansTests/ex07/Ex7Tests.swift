import XCTest
import MKTCore
import MKTUtils

class Ex07Tests: XCTestCase {

    func test00ContainsEven() throws {
        try XCTAssertTrue(containsEven([1, 2, 3, 126, 555]))
    }

    func test01NotContainsEven() throws {
        try XCTAssertFalse(containsEven([43, 33]))
    }

    func test02Contains() throws {
        try XCTAssertTrue(contains([1, 2, 3, 126, 555], { $0 == 2 }))
    }

    func test03NotContains() throws {
        try XCTAssertFalse(contains([43, 33], { $0 == 3 }))
    }

    static var allTests : [(String, (Ex07Tests) -> () throws -> Void)] {
        return [
            ("test00ContainsEven", test00ContainsEven),
            ("test01NotContainsEven", test01NotContainsEven),
            ("test02Contains", test02Contains),
            ("test03NotContains", test03NotContains)
        ]
    }

}
