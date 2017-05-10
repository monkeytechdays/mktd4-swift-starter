import XCTest
import MKTCore

class Ex00Tests: XCTestCase {

    func test00ShouldReturn0() {
        try XCTAssertEqual(shouldReturn0(), 0)
    }

    func test01ShouldReturn0OrNilWhenFalse() {
        try XCTAssertEqual(shouldReturn0OrNil(isNull: false), 0)
    }

    func test02ShouldReturn0OrNilWhenTrue() {
        try XCTAssertEqual(shouldReturn0OrNil(isNull: true), nil)
    }

    func test03ShouldReturnStringOK() {
        try XCTAssertEqual(shouldReturnStringOK(), "OK")
    }

    func test04ShouldReturnCharacterO() {
        try XCTAssertEqual(shouldReturnCharacterO(), "O")
    }

    func test05ShouldReturnFirstOfAPair() {
        try XCTAssertEqual(shouldReturnPairFirst((1,"2")), 1)
    }

    func test06ShouldReturnSecondOfAPair() {
        try XCTAssertEqual(shouldReturnPairSecond((1,"2")), "2")
    }

    static var allTests : [(String, (Ex00Tests) -> () throws -> Void)] {
        return [
            ("test00ShouldReturn0", test00ShouldReturn0),
            ("test01ShouldReturn0OrNilWhenFalse", test01ShouldReturn0OrNilWhenFalse),
            ("test02ShouldReturn0OrNilWhenTrue", test02ShouldReturn0OrNilWhenTrue),
            ("test03ShouldReturnStringOK",test03ShouldReturnStringOK),
            ("test04ShouldReturnCharacterO", test04ShouldReturnCharacterO),
            ("test05ShouldReturnFirstOfAPair", test05ShouldReturnFirstOfAPair),
            ("test06ShouldReturnSecondOfAPair", test06ShouldReturnSecondOfAPair)
        ]
    }
}
