//: [Previous](@previous)

import Foundation

enum PizzaTopping: String {
    case onion = "Onion"
    case capsicum = "Capsicum"
    case corn = "Corn"
    case cheese = "Cheese"
    case lotsOfCheese = "Lots of cheese"
}

class Pizza {
    var toppings: [PizzaTopping] = []
    func preparePizza(){
        print("Pizza is ready!")
    }
}

class Margherita: Pizza {
    override func preparePizza() {
        self.toppings.append(.lotsOfCheese)
        print("Margherita Pizza is ready!")
    }
}

//Usage
let newPizza = Margherita()
newPizza.preparePizza()

//: [Next](@next)
