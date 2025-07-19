//
//  Conditionnement.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

struct Conditionnement : Codable {
    var contenant: String = ""
    var conserve: String = ""
    
    var show : String {
        var string = conserve
        if contenant != "" {
            string = string + " en " + contenant
        }
        return string
    }
}
