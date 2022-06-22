//
//  CartManager.swift
//  SweaterApps
//
//  Created by Wahid on 22/06/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
