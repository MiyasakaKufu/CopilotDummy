import XCTest
@testable import Sample

class FooServiceTests: XCTestCase {

    var fooService: FooService!

    override func setUp() {
        super.setUp()
        fooService = FooService.shared
    }

    override func tearDown() {
        fooService = nil
        super.tearDown()
    }

    func testFetchFooData() async throws {
        let fooData = try await fooService.fetchFooData()
        XCTAssertEqual(fooData.count, 3)
        XCTAssertEqual(fooData[0].name, "Foo1")
    }

    func testSaveFooData() async throws {
        let foo = FooModel(id: 4, name: "Foo4")
        let success = try await fooService.saveFooData(foo)
        XCTAssertTrue(success)
    }
}
