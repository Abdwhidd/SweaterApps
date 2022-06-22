//
//  CartView.swift
//  SweaterApps
//
//  Created by Wahid on 22/06/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    VStack {
                        ProductRow(product: product)
                        //Text("tes")
                    }
                }
                
//                List(cartManager.products) { product in
//                    VStack
//                }
//
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
                
            } else {
                Text("My Cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
