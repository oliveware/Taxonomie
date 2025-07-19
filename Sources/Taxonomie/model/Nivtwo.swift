//
//  Nivtwo.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivtwo : Codable, Identifiable, Hashable {
    static public func ==  (_ a:Nivtwo, _ b:Nivtwo) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public var id:Int
    var tid:TID?
    
    public var nom = "choisir"
  //  public var pays:String { nom }
    
    var three:[Nivthree] = []
    
    init(_ nivone:TID) {
       let twotid = TID(nivone)
        tid = twotid
        id = twotid.two!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let two = try! JSONDecoder().decode(Nivtwo.self, from: jsonData)
        self = two
    }

    subscript(_ id:Int) -> Nivthree? {
        var found : Nivthree?
        for niv in three {
            if niv.id == id {
                found = niv
                break
            }
        }
        return found
    }
    
    mutating func add() {
        three.append(Nivthree(tid ?? TID()))
    }
    
}






