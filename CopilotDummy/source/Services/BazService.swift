import Foundation

class BazService {

    // シングルトンインスタンス
    static let shared = BazService()

    private init() {}

    // Bazデータを取得するメソッド
    func fetchBazData() async throws -> [BazModel] {
        // ダミーデータを作成
        let bazData = [
            BazModel(id: 1, name: "Baz1"),
            BazModel(id: 2, name: "Baz2"),
            BazModel(id: 3, name: "Baz3")
        ]

        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return bazData
    }

    // Bazデータを保存するメソッド
    func saveBazData(_ baz: BazModel) async throws -> Bool {
        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return true
    }

    // Userデータを取得するメソッド
    func fetchUserData() async throws -> [User] {
        // ダミーデータを作成
        let userData = [
            User(id: 1, name: "Alice", age: 25, gender: .female),
            User(id: 2, name: "Bob", age: 30, gender: .male),
            User(id: 3, name: "Charlie", age: 28, gender: .other)
        ]

        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return userData
    }

    // Userデータを保存するメソッド
    func saveUserData(_ user: User) async throws -> Bool {
        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return true
    }
}
