import XCTest
import MKTCore
import MKTUtils

class Ex05Tests: XCTestCase {

    func test00UseLazy() {
        var initialized = false
        var lazyProperty = LazyProperty({ initialized = true; return 42 })
        XCTAssertFalse(initialized)
        let result = lazyProperty.value
        XCTAssertTrue(initialized)
        XCTAssertEqual(42, result)
    }

    func test01LazyShouldBeInitializedOnce() {
        var initialized = 0
        var lazyProperty = LazyProperty({ initialized += 1; return 42 })
        let _ = lazyProperty.value
        let _ = lazyProperty.value
        XCTAssertEqual(1, initialized)
    }

    static var allTests : [(String, (Ex05Tests) -> () throws -> Void)] {
        return [
            ("test00UseLazy", test00UseLazy),
            ("test01LazyShouldBeInitializedOnce", test01LazyShouldBeInitializedOnce)
        ]
    }

}
