import XCTest
@testable import MySwiftProject

class BazServiceTests: XCTestCase {

    var bazService: BazService!

    override func setUp() {
        super.setUp()
        bazService = BazService.shared
    }

    override func tearDown() {
        bazService = nil
        super.tearDown()
    }

    func testFetchBazData() async throws {
        let bazData = try await bazService.fetchBazData()
        XCTAssertEqual(bazData.count, 3)
        XCTAssertEqual(bazData[0].name, "Baz1")
    }

    func testSaveBazData() async throws {
        let baz = BazModel(id: 4, name: "Baz4")
        let success = try await bazService.saveBazData(baz)
        XCTAssertTrue(success)
    }

    func testFetchUserData() async throws {
        let userData = try await bazService.fetchUserData()
        XCTAssertEqual(userData.count, 3)
        XCTAssertEqual(userData[0].name, "Alice")
        XCTAssertEqual(userData[0].gender, .female)
    }

    func testSaveUserData() async throws {
        let user = User(id: 4, name: "Dave", age: 35, gender: .male)
        let success = try await bazService.saveUserData(user)
        XCTAssertTrue(success)
    }
}
