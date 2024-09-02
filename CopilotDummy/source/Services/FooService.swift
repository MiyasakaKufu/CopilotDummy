import Foundation

class FooService {

    // シングルトンインスタンス
    static let shared = FooService()

    private init() {}

    // Fooデータを取得するメソッド
    func fetchFooData() async throws -> [FooModel] {
        // ダミーデータを作成
        let fooData = [
            FooModel(id: 1, name: "Foo1"),
            FooModel(id: 2, name: "Foo2"),
            FooModel(id: 3, name: "Foo3")
        ]

        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return fooData
    }

    // Fooデータを保存するメソッド
    func saveFooData(_ foo: FooModel) async throws -> Bool {
        // 非同期処理のシミュレーション
        try await Task.sleep(nanoseconds: 1_000_000_000) // 1秒待機
        return true
    }
}
