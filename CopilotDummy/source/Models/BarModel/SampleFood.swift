//
//  SampleFood.swift
//  Sample
//
//  Created by naoya.miyasaka on 2024/08/29.
//

struct Food {
    enum Category {
        case rice, noodle, vegetable, marineProducts, meat,
             egg, fruit, sideDish, pickles, bread, drink
    }

    let id: Int
    let name: String
    let category: Category
}
