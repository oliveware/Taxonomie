//
//  Nivzero.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation
@MainActor
public struct Nivzero : Codable {
    
    var id:Int
    var tid:TID {
        TID([id])
    }
    var nom = ""
    var nivones : [Nivone] = []
    
    init(_ id:Int, _ nom:String, _ ones: [Nivone]) {
        self.id = id
        self.nom = nom
        nivones = ones
    }
    
   /* init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let carto = try! JSONDecoder().decode(Nivzeroset.self, from: jsonData)
        self = carto
    }*/
    
    func insert(_ niveau: Niveau){
        
    }
    mutating func add() {
        nivones.append(Nivone(tid))
    }
    
    subscript(_ id:Int) -> Nivone? {
        var found : Nivone?
        for nivone in nivones {
            if nivone.id == id {
                found = nivone
                break
            }
        }
        return found
    }
}








