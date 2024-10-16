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
