//
//  Nivone.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivone : Codable, Identifiable {

    public var id:Int
    var tid:TID?
    
    public var nom = ""
    public var pays:String { nom }
    
    var nivtwos:[Nivtwo] = []
    
    init(_ continent:TID) {
       let nivonetid = TID(continent)
        tid = nivonetid
        id = nivonetid.nivone!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let pays = try! JSONDecoder().decode(Nivone.self, from: jsonData)
        self = pays
    }

    subscript(_ id:Int) -> Nivtwo? {
        var found : Nivtwo?
        for nivtwo in nivtwos {
            if nivtwo.id == id {
                found = nivtwo
                break
            }
        }
        return found
    }
    
    mutating func add() {
        nivtwos.append(Nivtwo(tid ?? TID()))
    }
}






