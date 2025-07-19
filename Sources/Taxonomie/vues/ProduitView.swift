//
//  ProduitView.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//
import SwiftUI

struct ProduitView: View {
    @Binding var produit:Produit
    @State var edition = false
    
    var body: some View {
        if edition {
            ProduitEditor(produit:$produit)
        } else {
            ProduitShow(produit:produit)
        }
    }
}

struct ProduitShow: View {
    var produit:Produit
    
    var body: some View {
            Text(produit.show)
    }
}

struct ProduitEditor: View {
    @Binding var produit:Produit
    
    var body: some View {
        Form {
            TextField("nom", text: $produit.nom)
            TextField("conservation", text: $produit.cond.conserve)
            TextField("contenant", text: $produit.cond.contenant)
        }
    }
}
