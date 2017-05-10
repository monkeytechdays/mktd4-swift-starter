import XCTest

class Ex06Tests: XCTestCase {

    func test00JoinToString() throws {
        try XCTAssertEqual("yes, no, may be", joinOptions(["yes", "no", "may be"]))
    }

    func test01JoinToStringWithPrefix() throws {
        try XCTAssertEqual("[yes, no, may be", joinOptions(["yes", "no", "may be"], prefix:"["))
    }

    func test02JoinToStringWithPostfix() throws {
        try XCTAssertEqual("[yes, no, may be]", joinOptions(["yes", "no", "may be"], prefix:"[", postfix:"]"))
    }

    func test03JoinToStringWithSeparator() throws {
        try XCTAssertEqual("[yes|no|may be]", joinOptions(["yes", "no", "may be"], prefix:"[", separator:"|", postfix:"]"))
    }

    func test04VarArgs() throws {
        try XCTAssertEqual("yes, no, may be", joinVarArgsOptions("yes", "no", "may be"))
    }

    static var allTests : [(String, (Ex06Tests) -> () throws -> Void)] {
        return [
            ("test00JoinToString", test00JoinToString),
            ("test01JoinToStringWithPrefix", test01JoinToStringWithPrefix),
            ("test02JoinToStringWithPostfix", test02JoinToStringWithPostfix),
            ("test03JoinToStringWithSeparator", test03JoinToStringWithSeparator),
            ("test04VarArgs", test04VarArgs)
        ]
    }

}
