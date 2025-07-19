//
//  ItemsVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct ItemsVue : View {
    @Binding var items:[Produit]
   // @Binding var selected: Int
    
    var body:some View {
        ScrollView {
            ForEach(0..<items.count, id:\.self){
                    index in
                ProduitView(produit:$items[index])
            }
        }
    }

}
