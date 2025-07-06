//
//  Nivzero.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivzero : Codable {
    
    var id:Int
    var tid:TID {
        TID([id])
    }
    var nom = ""
    var nivones : [Nivone] = []
    
    init(_ id:Int, _ nom:String, _ lands: [Nivone]) {
        self.id = id
        self.nom = nom
        nivones = lands
    }
    
   /* init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let carto = try! JSONDecoder().decode(Nivzeroset.self, from: jsonData)
        self = carto
    }*/
    
    func insert(_ lieu: Lieu){
        
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

struct Nivzeroset: Codable {
    static var Europe = Nivzeroset(nivzeroset).sept[1]
    
    var sept : [Nivzero]
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let terre = try! JSONDecoder().decode(Nivzeroset.self, from: jsonData)
        self = terre
        TID.nextinit(terre.sept)
    }
    
    subscript(_ id:Int) -> Nivzeroset? {
        var found : Nivzeroset?
        for nivzeroset in sept {
            if nivzeroset.id == id {
                found = nivzeroset
                break
            }
        }
        return found
    }
}






