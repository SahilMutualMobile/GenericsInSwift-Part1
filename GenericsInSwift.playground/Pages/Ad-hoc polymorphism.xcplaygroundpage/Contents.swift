//: [Previous](@previous)

import Foundation

enum PizzaTopping: String {
    case Onion, Capsicum, Corn, Cheese
}

class Pizza {
    var toppings: [PizzaTopping] = []
    func makePizza() {
        self.toppings = [.Cheese]
        print("Margherita Pizza is ready!")
    }
    func makePizza(with toppings: [PizzaTopping]) {
        self.toppings = [.Cheese, .Onion, .Capsicum]
        print("Farmhouse Pizza is ready!")
    }
}

//Usage
let newOrder = Pizza()
newOrder.makePizza()
let newOrder2 = Pizza()
newOrder2.makePizza(with: [.Capsicum,.Cheese])

//: [Next](@next)
