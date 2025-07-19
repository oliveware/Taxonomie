//
//  Nivfour.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivthree : Codable, Identifiable,Hashable {
    static public func ==  (_ a:Nivthree, _ b:Nivthree) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
    public var id:Int
    var tid:TID?
    
    public var nom = ""
  //  public var pays:String { nom }
    
    var four:[Nivfour] = []
    
    init(_ nivtwo:TID) {
       let threetid = TID(nivtwo)
        tid = threetid
        id = threetid.three!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let three = try! JSONDecoder().decode(Nivthree.self, from: jsonData)
        self = three
    }

    subscript(_ id:Int) -> Nivfour? {
        var found : Nivfour?
        for niv in four {
            if niv.id == id {
                found = niv
                break
            }
        }
        return found
    }
    
    mutating func add() {
        four.append(Nivfour(tid ?? TID()))
    }
 
}
