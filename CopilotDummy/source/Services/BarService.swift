import Foundation

class BarService {

    // シングルトンインスタンス
    static let shared = BarService()

    private init() {}

    // Barデータを取得するメソッド
    func fetchBarData() async throws -> [BarModel] {
        // ダミーデータを作成
        let barData = [
            BarModel(id: 1, name: "Bar1"),
            BarModel(id: 2, name: "Bar2"),
            BarModel(id: 3, name: "Bar3")
        ]

        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return barData
    }

    // Barデータを保存するメソッド
    func saveBarData(_ bar: BarModel) async throws -> Bool {
        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return true
    }

    // Foodデータを取得するメソッド
    func fetchFoodData() async throws -> [Food] {
        // ダミーデータを作成
        let foodData = [
            Food(id: 1, name: "Rice", category: .rice),
            Food(id: 2, name: "Noodle", category: .noodle),
            Food(id: 3, name: "Apple", category: .fruit)
        ]

        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return foodData
    }

    // Foodデータを保存するメソッド
    func saveFoodData(_ food: Food) async throws -> Bool {
        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return true
    }
}
