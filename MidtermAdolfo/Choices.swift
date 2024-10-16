//
//  Choices.swift
//  MidtermAdolfo
//
//  Created by David Romero on 2024-10-16.
//

import Foundation

enum PizzaSizes: String, CaseIterable, Identifiable {
    case small  = "Small", medium = "Medium", large = "Large"
    var id: Self { self }
}
enum PizzaToppings: String, CaseIterable, Identifiable {
    case cheese = "Cheese", pepperoni = "Pepperoni", veggie = "Veggie", canadian = "Canadian", bbq = "BBQ", anchovy = "Anchovy"
    var id: Self { self }
}
