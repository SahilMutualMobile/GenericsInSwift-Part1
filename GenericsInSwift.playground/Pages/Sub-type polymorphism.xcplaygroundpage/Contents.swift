//: [Previous](@previous)

import Foundation

enum PizzaTopping: String {
    case Onion, Capsicum, Corn, Cheese
}

class Pizza {
    var toppings: [PizzaTopping] = []
    func bake(){
        print("Pizza is ready!")
    }
}

class Margherita: Pizza {
    override func bake() {
        toppings = [.Cheese]
        print("Margherita Pizza is ready!")
    }
}

//Usage
let newPizza = Margherita()
newPizza.bake()

//: [Next](@next)
