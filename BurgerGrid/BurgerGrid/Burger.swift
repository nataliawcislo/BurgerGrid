//
//  Burger.swift
//  BurgerGrid
//
//  Created by Natalia Wcisło on 14/01/2020.
//  Copyright © 2020 Natalia Wcisło. All rights reserved.
//

import Foundation
import UIKit

struct Burger {
    var name: String = ""
    var image: UIImage
    var price: Double = 0.0
   
    init(name: String, image: String, price: Double) {
        self.name = name
        self.image = UIImage(named: image)!
        self.price = price
    }
}

let burgerList: [Burger] = [
    Burger(name: "Drwala Wege", image: "B1", price: 6.60),
    Burger(name: "BigMac", image: "B2", price: 4.09),
    Burger(name: "McRoyal", image: "B3", price: 2.99),
    Burger(name: "McWrap Becon", image: "B4", price: 3.65),
    Burger(name: "Filet-O-Fish", image: "B5", price: 0.99),
    Burger(name: "Chikker", image: "B6", price: 1.00),
    Burger(name: "Jalapeno Burger", image: "B7", price: 3.20),
    Burger(name: "McDouble", image: "B8", price: 4.20),
    Burger(name: "McTost", image: "B9", price: 1.25),
    Burger(name: "Salatka Premium", image: "B10", price: 9.99),
    Burger(name: "Frytki", image: "B11", price: 3.30),
    Burger(name: "Ciasteczko", image: "B12", price: 5.20),
    Burger(name: "Cappuccino", image: "B13", price: 2.50),
    Burger(name: "Happy Meal", image: "B14", price: 9.60),
    Burger(name: "2 for U Sniadaniowe", image: "B15", price: 3.20),
    Burger(name: "Lodowe Marzenie", image: "B16", price: 6.20),
    Burger(name: "McFlurry", image: "B17", price: 1.35),
    Burger(name: "Lody z polewa", image: "B18", price: 3.99),
    Burger(name: "Napoj Coca-Cola", image: "B19", price: 0.40)
]

