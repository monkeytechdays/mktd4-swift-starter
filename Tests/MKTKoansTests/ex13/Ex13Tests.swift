import XCTest
import MKTCore
import MKTUtils

class Ex13Tests: XCTestCase {

    func test00ShouldCreateEmptyDictionary() {
        try XCTAssertEqual(0, getEmptyDictionaryOfScores().count)
    }

    func test01ShouldFilterOneElement() {
        try XCTAssertEqual(1, getScoresInRange(["a":1,"b":2],2...3).count)
    }

    func test02ShouldFilterOneElementAndRetrieveIt() {
        try XCTAssertNotNil(getDictionaryScoresInRange(["a":1,"b":2],2...3)["b"])
    }
    
    static var allTests : [(String, (Ex13Tests) -> () throws -> Void)] {
        return [
            ("test00ShouldCreateEmptyDictionary", test00ShouldCreateEmptyDictionary),
            ("test01ShouldFilterOneElement", test01ShouldFilterOneElement),
            ("test02ShouldFilterOneElementAndRetrieveIt", test02ShouldFilterOneElementAndRetrieveIt)
        ]
    }

}
