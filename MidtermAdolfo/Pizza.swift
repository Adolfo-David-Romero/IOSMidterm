//
//  Pizza.swift
//  MidtermAdolfo
//
//  Created by David Romero on 2024-10-16.
//

import Foundation

struct Pizza{
    var size: String
    var pepperoni: Bool
    var cheese: Bool
    var olive: Bool
    var quantity: Int
    
    init(size: String, pepperoni: Bool, cheese: Bool, olive:Bool, quantity:Int) {
        self.size = size
        self.pepperoni = pepperoni
        self.cheese = cheese
        self.olive = olive
        self.quantity = quantity
        
    }
    func totalPrice(quantity: Int, pepperoni: Bool, cheese:Bool, olive: Bool) -> Int{
        var extra: Int = 0
        if (pepperoni){
            extra = extra + 1
        }else if (cheese){
            extra = extra + 1
        }
        else if (olive){
            extra = extra + 1
        }
        
        //Total Price: pizza Price * number of Pizzas
        if(size == "Small"){
            return (10 * quantity+extra)
        }else if(size == "Medium"){
            return (12 * quantity+extra)
        }else if(size == "Large"){
            return (15 * quantity+extra)
        }else{
            return 0
        }
        
    }
    
    
    

    
}
