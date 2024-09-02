import XCTest
@testable import Sample

class BarServiceTests: XCTestCase {

    var barService: BarService!

    override func setUp() {
        super.setUp()
        barService = BarService.shared
    }

    override func tearDown() {
        barService = nil
        super.tearDown()
    }

    func testFetchBarData() async throws {
        let barData = try await barService.fetchBarData()
        XCTAssertEqual(barData.count, 3)
        XCTAssertEqual(barData[0].name, "Bar1")
    }

    func testSaveBarData() async throws {
        let bar = BarModel(id: 4, name: "Bar4")
        let success = try await barService.saveBarData(bar)
        XCTAssertTrue(success)
    }

    func testFetchFoodData() async throws {
        let foodData = try await barService.fetchFoodData()
        XCTAssertEqual(foodData.count, 3)
        XCTAssertEqual(foodData[0].name, "Rice")
        XCTAssertEqual(foodData[0].category, .rice)
    }

    func testSaveFoodData() async throws {
        let food = Food(id: 4, name: "Bread", category: .bread)
        let success = try await barService.saveFoodData(food)
        XCTAssertTrue(success)
    }
}
