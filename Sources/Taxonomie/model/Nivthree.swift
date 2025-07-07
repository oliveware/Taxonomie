//
//  Nivfour.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation
@MainActor
public struct Nivthree : Codable, Identifiable {
    
    public var id:Int
    var tid:TID?
    
    public var nom = ""
  //  public var pays:String { nom }
    
    var nivfours:[Nivfour] = []
    
    init() {id = 0}
    init(_ nivtwo:TID) {
       let nivtwotid = TID(nivtwo)
        tid = nivtwotid
        id = nivtwotid.nivthree!
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
