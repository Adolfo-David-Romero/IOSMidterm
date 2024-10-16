//
//  SummaryView.swift
//  MidtermAdolfo
//
//  Created by David Romero on 2024-10-16.
//

import SwiftUI

struct SummaryView: View {
    @Binding var userName: String
    @Binding var selectedSize: PizzaSizes
    @Binding var selectedTopping: PizzaToppings
    @Binding var selectedQuantity: String
    var body: some View {
        Text("")
    }
}

#Preview {
    @State var userName: String = ""
    @State var selectedSize: PizzaSizes = .medium
    @State var selectedTopping: PizzaToppings = .pepperoni
    @State var selectedQuantity: String = ""
    SummaryView(userName: $userName, selectedSize: $selectedSize, selectedTopping: $selectedTopping, selectedQuantity: $selectedQuantity)
}
