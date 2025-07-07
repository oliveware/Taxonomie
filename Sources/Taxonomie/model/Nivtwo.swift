//
//  Nivtwo.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct Nivtwo : Codable, Identifiable {
    
    public var id:Int
    var tid:TID?
    
    public var nom = ""
  //  public var pays:String { nom }
    
    var nivthrees:[Nivthree] = []
    
    init() {id = 0}
    init(_ nivone:TID) {
       let nivtwotid = TID(nivone)
        tid = nivtwotid
        id = nivtwotid.nivone!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let two = try! JSONDecoder().decode(Nivtwo.self, from: jsonData)
        self = two
    }

    subscript(_ id:Int) -> Nivthree? {
        var found : Nivthree?
        for niv in nivthrees {
            if niv.id == id {
                found = niv
                break
            }
        }
        return found
    }
    
    mutating func add() {
        nivthrees.append(Nivthree(tid ?? TID()))
    }
}






