import XCTest
@testable import CoreLocation

class CoreLocationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(CoreLocation().text, "Hello, World!")
    }


    static var allTests : [(String, (CoreLocationTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
