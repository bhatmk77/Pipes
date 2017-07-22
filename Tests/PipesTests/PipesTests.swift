import XCTest
@testable import Pipes

func double(a: Int) -> Int {
	return 2 * a
}

class PipesTests: XCTestCase {
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        XCTAssertEqual(Pipes().text, "Hello, World!")
//    }

	func testDouble() {
		XCTAssertEqual(6 |> double, 12)
	}

    static var allTests = [
        ("testDouble", testDouble),
    ]
}
