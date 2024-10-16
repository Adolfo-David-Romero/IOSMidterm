//
//  OrderView.swift
//  MidtermAdolfo
//
//  Created by David Romero on 2024-10-16.
//

import SwiftUI

struct OrderView: View {
    @State private var userName: String = ""
    @State private var selectedSize: PizzaSizes = .medium
    @State private var selectedTopping: PizzaToppings = .pepperoni
    @State private var selectedQuantity: String = "" //Will Int() this
    var body: some View {
        NavigationStack{
            TextField("Enter user name",
                      text: $userName
            )
            TextField("Enter number of Pizza's",
                      text: $selectedQuantity
            )
        }
    }
}

#Preview {
    OrderView()
}
