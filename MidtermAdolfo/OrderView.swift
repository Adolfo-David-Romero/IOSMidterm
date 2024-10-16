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
    @State private var selectedQuantity: Int = 0 //Will Int() this
    @State private var pepperoni:Bool = false
    @State private var chese: Bool = false
    @State private var olive:Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                
                List{
                    Text("Pizza Info:").font(.largeTitle)
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
                }//List End
                NavigationLink("Place the Order"){
                    
                }
                
            }
        }.navigationTitle("OrderView")
    }
}

#Preview {
    OrderView()
}
