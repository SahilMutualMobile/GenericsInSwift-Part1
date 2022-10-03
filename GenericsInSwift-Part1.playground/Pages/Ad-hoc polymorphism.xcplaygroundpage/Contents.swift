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
    func preparePizza() {
        self.toppings = [.lotsOfCheese]
        print("Margherita Pizza is ready!")
    }
    func preparePizza(with toppings: [PizzaTopping]) {
        self.toppings = toppings
        print("Customized Pizza is ready!")
    }
}

//Usage
let newOrder = Pizza()
newOrder.preparePizza()
let newOrder2 = Pizza()
newOrder2.preparePizza(with: [.capsicum, .cheese])

//: [Next](@next)
