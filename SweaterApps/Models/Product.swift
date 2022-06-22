//
//  Product.swift
//  SweaterApps
//
//  Created by Wahid on 21/06/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    Product(
    name: "Blue Sweater",
    image: "sweater1",
    price: 50
    ),
    Product(
    name: "White Sweater",
    image: "sweater2",
    price: 30
    ),
    Product(
    name: "Grey Sweater",
    image: "sweater3",
    price: 45
    ),
    Product(
    name: "Grey Sweater Jaz",
    image: "sweater4",
    price: 60
    ),
    Product(
    name: "Pink Sweater",
    image: "sweater5",
    price: 20
    ),
    Product(
    name: "Grey Sweater Large",
    image: "sweater6",
    price: 45
    ),
    Product(
    name: "Chocolate Sweater",
    image: "sweater7",
    price: 45
    ),
    Product(
    name: "White Lager Sweater",
    image: "sweater8",
    price: 35
    ),
]
