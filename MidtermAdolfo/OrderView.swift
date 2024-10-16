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
    var body: some View {
        TextField("Enter user name",
                  text: $userName
        )
    }
}

#Preview {
    OrderView()
}
