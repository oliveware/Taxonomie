//
//  Nivfour.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivthree : Codable {
    
    public var id:Int
    var tid:TID?
    
    public var nom = ""
  //  public var pays:String { nom }
    
    var nivfours:[Nivfour] = []
    
    init(_ nivone:TID) {
       let nivtwotid = TID(nivone)
        tid = nivtwotid
        id = nivtwotid.nivone!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let three = try! JSONDecoder().decode(Nivthree.self, from: jsonData)
        self = three
    }

    subscript(_ id:Int) -> Nivfour? {
        var found : Nivfour?
        for niv in nivfours {
            if niv.id == id {
                found = niv
                break
            }
        }
        return found
    }
    
    mutating func add() {
        nivfours.append(Nivfour(tid ?? TID()))
    }
}
