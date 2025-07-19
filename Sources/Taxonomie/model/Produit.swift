//
//  Produit.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

struct Produit: Codable, Identifiable {
    var id = 0
    var nom = ""
    var cond = Conditionnement()
    
    var isNaN:Bool {
        nom == ""
    }
    
    var show : String {
        nom + "\n" + cond.show
    }
}
