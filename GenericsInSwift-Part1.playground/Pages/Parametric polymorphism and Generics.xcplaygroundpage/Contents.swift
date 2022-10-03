//: [Previous](@previous)

import Foundation

enum PizzaTopping: String {
    case onion = "Onion"
    case capsicum = "Capsicum"
    case corn = "Corn"
    case cheese = "Cheese"
    case lotsOfCheese = "Lots of cheese"
}

protocol ItemName {
    var message: String { get }
}

enum PizzaType: String, ItemName {
    case margherita = "Margherita"
    case farmhouse = "Farmhouse"
    case goldenCorn = "Golden corn"
    
    var toppings: [PizzaTopping] {
        switch self {
        case .margherita :
            return [.lotsOfCheese]
        case .farmhouse:
            return [.corn, .capsicum, .onion, .cheese]
        case .goldenCorn:
            return [.corn, .cheese]
        }
    }
    var message : String {
        "\(self.rawValue) pizza is ready!"
    }
}

enum SideDishType: String, ItemName {
    case fries = "Fries"
    case calzone = "Calzone"
    var message: String {
        "\(self.rawValue) side dish is ready!"
    }
}

class PizzaShop {    
    func prepare<T: ItemName>(type: T) {
        print(type.message)
    }
}

//Usage
//Pizza orders
var myOrder = PizzaShop()
myOrder.prepare(type: PizzaType.margherita)
var myOrder2 = PizzaShop()
myOrder2.prepare(type: PizzaType.farmhouse)
var myOrder3 = PizzaShop()
myOrder3.prepare(type: PizzaType.goldenCorn)
//Side dish orders
var myOrder4 = PizzaShop()
myOrder4.prepare(type: SideDishType.calzone)
var myOrder5 = PizzaShop()
myOrder5.prepare(type: SideDishType.fries)

//: [Next](@next)
