//
//  SummaryView.swift
//  MidtermAdolfo
//
//  Created by David Romero on 2024-10-16.
//

import SwiftUI

struct SummaryView: View {
    @Binding var size: String
    @Binding var pepperoni: Bool
    @Binding var cheese: Bool
    @Binding var olive: Bool
    @Binding var quantity: String
    @State var pizza = Pizza(size: "Small", pepperoni: true, cheese: true, olive: true, quantity: 1)
    var body: some View {
        NavigationStack{
            List{
                Text("size:\(pizza.size)")
                Text("pepperoni:\(pizza.pepperoni)")
                Text("cheese:\(pizza.cheese)")
                Text("olive:\(pizza.olive)")
                Text("quantity:\(pizza.quantity)")
            }
            Text("Price:")
            Text("\(pizza.totalPrice(size:pizza.size,quantity: pizza.quantity, pepperoni: pizza.pepperoni, cheese: pizza.cheese, olive: pizza.olive))")
        }.navigationTitle("Summary")
    }
}

#Preview {
//    var pizza = Pizza(size: "Small", pepperoni: true, cheese: true, olive: true, quantity: 1)
//   
//    SummaryView(pizza: Pizza)
}
