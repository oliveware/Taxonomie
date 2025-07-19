//
//  Nivzero.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

struct Nivzero : Codable, Identifiable, Hashable {
    static var nom = "zero"
    
    static public func ==  (_ a:Nivzero, _ b:Nivzero) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id:Int
    var tid:TID {
        TID([id])
    }
    var nom = ""
    var one : [Nivone] = []
    
    init() {id = 0}
    init(_ id:Int, _ nom:String, _ nivones: [Nivone]) {
        self.id = id
        self.nom = nom
       one = nivones
    }
    
   /* init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let carto = try! JSONDecoder().decode(Nivzero.self, from: jsonData)
        self = carto
    }*/
    
    func insert(_ niveau: Niveau){
        
    }
    mutating func add() {
        one.append(Nivone(tid))
    }
    
    subscript(_ id:Int) -> Nivone? {
        var found : Nivone?
        for nivone in one {
            if nivone.id == id {
                found = nivone
                break
            }
        }
        return found
    }
}








