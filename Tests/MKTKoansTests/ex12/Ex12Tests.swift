import XCTest
import MKTCore
import MKTUtils

class Ex12Tests: XCTestCase {

    func test00IntParsing() {
        try XCTAssertEqual(1, parseInt("1"))
    }

    func test01IntParsingShouldFailWithLetter() {
        do {
            try parseInt("e")
            XCTFail()
        } catch let error {
            XCTAssertEqual(true, error is NANException)
        }
    }

    func test02IntParsingShouldReturnOtherwiseValue() {
        try XCTAssertEqual(-1, parseInt("e",otherwise:-1))
    }

    static var allTests : [(String, (Ex12Tests) -> () throws -> Void)] {
        return [
            ("test00IntParsing", test00IntParsing),
            ("test01IntParsingShouldFailWithLetter", test01IntParsingShouldFailWithLetter),
            ("test02IntParsingShouldReturnOtherwiseValue", test02IntParsingShouldReturnOtherwiseValue)
        ]
    }

}
