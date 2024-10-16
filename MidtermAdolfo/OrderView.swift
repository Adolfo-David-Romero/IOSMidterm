//
//  OrderView.swift
//  MidtermAdolfo
//
//  Created by David Romero on 2024-10-16.
//

import SwiftUI

struct OrderView: View {
    @State var userName: String = ""
    @State var selectedSize: PizzaSizes = .medium
    @State var quantity: String = "" //Will Int() this
    @State var pepperoni:Bool = false
    @State var cheese: Bool = false
    @State var olive:Bool = false
   
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
                        Toggle("", isOn: $pepperoni)
                        Toggle("", isOn: $cheese)
                        Toggle("", isOn: $olive)
                    }
                    TextField("Enter number of Pizza's",
                              text: $quantity
                    )
                }//List End
                NavigationLink("Place the Order"){
                    SummaryView(size: $quantity, pepperoni: $pepperoni, cheese: $cheese, olive: $olive, quantity: $quantity )
                }
                
            }
        }.navigationTitle("OrderView")
    }
}

#Preview {
    OrderView()
}
