//
//  Nivfour.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivfour : Codable, Identifiable {
    
    public var id:Int
    var tid:TID?
    
    public var nom = ""
  //  public var pays:String { nom }
    
    var nivfives:[Nivfive] = []
    
    init() {id = 0}
    init(_ nivthree:TID) {
       let nivfourid = TID(nivthree)
        tid = nivfourid
        id = nivfourid.nivone!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let four = try! JSONDecoder().decode(Nivfour.self, from: jsonData)
        self = four
    }

    subscript(_ id:Int) -> Nivfive? {
        var found : Nivfive?
        for niv in nivfives {
            if niv.id == id {
                found = niv
                break
            }
        }
        return found
    }
    
    mutating func add() {
        nivfives.append(Nivfive(tid ?? TID()))
    }
}
