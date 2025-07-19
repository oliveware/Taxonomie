//
//  Nivfour.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivfour : Codable, Identifiable, Hashable {
    static public func ==  (_ a:Nivfour, _ b:Nivfour) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
    public var id:Int
    var tid:TID?
    
    public var nom = ""
    
    var five:[Nivfive] = []
    
    init(_ nivthree:TID) {
       let fourtid = TID(nivthree)
        tid = fourtid
        id = fourtid.four!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let four = try! JSONDecoder().decode(Nivfour.self, from: jsonData)
        self = four
    }

    subscript(_ id:Int) -> Nivfive? {
        var found : Nivfive?
        for niv in five {
            if niv.id == id {
                found = niv
                break
            }
        }
        return found
    }
    
    mutating func add() {
        five.append(Nivfive(tid ?? TID()))
    }
}
