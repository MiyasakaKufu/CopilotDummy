import Foundation

struct User {
    enum Gender {
        case male, female, other
    }

    let id: Int
    let name: String
    let age: UInt
    let gender: Gender
}
