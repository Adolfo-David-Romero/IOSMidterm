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
    @State private var isPeperoni = false
    @State private var isVeggie = false
    @State private var isCheese = false
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    TextField("Enter user name",
                              text: $userName
                    )
                    Picker("Select Pizza Size:", selection: $selectedSize){
                        Text("Small").tag(PizzaSizes.small)
                        Text("Medium").tag(PizzaSizes.medium)
                        Text("Large").tag(PizzaSizes.large)
                    }.pickerStyle(.menu)
                    Text("Choose Toppings:")
                    HStack{
                        Picker("Select Pizza Toppings:", selection: $selectedTopping){
                            Text("Cheese Pizza").tag(PizzaToppings.cheese)
                            Text("Pepperoni Pizza").tag(PizzaToppings.pepperoni)
                            Text("Veggie Pizza").tag(PizzaToppings.veggie)
                        }.pickerStyle(.segmented)
                    }
                    TextField("Enter number of Pizza's",
                              text: $selectedQuantity
                    )
                }
                
                
            }
        }
    }
}

#Preview {
    OrderView()
}
