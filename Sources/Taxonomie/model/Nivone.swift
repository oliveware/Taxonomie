//
//  Nivone.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivone : Codable, Identifiable, Hashable {
    
    static public func ==  (_ a:Nivone, _ b:Nivone) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public var id:Int
    var tid:TID?
    
    public var nom = "choisir"
   // public var pays:String { nom }
    
    var two:[Nivtwo] = []
    
    init(_ nivzero:TID) {
       let onetid = TID(nivzero)
        tid = onetid
        id = onetid.one!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let pays = try! JSONDecoder().decode(Nivone.self, from: jsonData)
        self = pays
    }

    subscript(_ id:Int) -> Nivtwo? {
        var found : Nivtwo?
        for nivtwo in two {
            if nivtwo.id == id {
                found = nivtwo
                break
            }
        }
        return found
    }
    
    mutating func add() {
        two.append(Nivtwo(tid ?? TID()))
    }
}






