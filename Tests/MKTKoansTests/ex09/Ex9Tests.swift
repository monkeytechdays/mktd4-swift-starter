import XCTest
import MKTCore
import MKTUtils

class Ex09Tests: XCTestCase {

    func test00FindMove() throws {
        try XCTAssertEqual(.NORTH, findMoveUsingInt(0))
        try XCTAssertEqual(.SOUTH, findMoveUsingInt(1))
        try XCTAssertEqual(.SOUTH, findMoveUsingInt(2))
        try XCTAssertEqual(.WEST, findMoveUsingInt(3))
        try XCTAssertEqual(.EAST, findMoveUsingInt(4))
        try XCTAssertEqual(.NONE, findMoveUsingInt(5))
        try XCTAssertEqual(.NONE, findMoveUsingInt(6))
        try XCTAssertNil(findMoveUsingInt(7))
    }

    func test01Num() throws {
        try XCTAssertEqual(2, eval(.Num(2)))
    }

    func test02Sum() throws {
        try XCTAssertEqual(3, eval(.Sum(.Num(2), .Num(1))))
    }

    func test03Recursion() throws {
        try XCTAssertEqual(6, eval(.Sum(.Sum(.Num(1), .Num(2)), .Num(3))))
    }

    static var allTests : [(String, (Ex09Tests) -> () throws -> Void)] {
        return [
            ("test00FindMove", test00FindMove),
            ("test01Num", test01Num),
            ("test02Sum", test02Sum),
            ("test03Recursion", test03Recursion)
        ]
    }

}
