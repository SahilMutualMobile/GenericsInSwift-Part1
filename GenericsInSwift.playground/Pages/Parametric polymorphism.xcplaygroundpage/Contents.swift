//: [Previous](@previous)

import Foundation

enum Topping: String {
    case Onion, Capsicum, Corn, Cheese
}

protocol PizzaTopping {
    var toppings: [Topping] { get }
}
protocol PizzaName {
    var name: String { get }
}

enum PizzaTypes: PizzaName, PizzaTopping {
    case Margherita, Farmhouse
    var toppings: [Topping] {
        switch self {
        case .Margherita :
            return [.Cheese]
        case .Farmhouse:
            return [.Corn, .Capsicum, .Corn, .Cheese]
        }
    }
    var name : String {
        "\(self)"
    }
}

class PizzaShop {
    var toppings: [PizzaTopping] = []
    
    func orderPizza<T: PizzaName>(type: T) {
        print("\(type.name) pizza is ready!")
    }
}

//Usage
var myOrder = PizzaShop()
myOrder.orderPizza(type: PizzaTypes.Margherita)
var myOrder2 = PizzaShop()
myOrder2.orderPizza(type: PizzaTypes.Farmhouse)

//: [Next](@next)
