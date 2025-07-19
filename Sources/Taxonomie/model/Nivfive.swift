//
//  Nivfive.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

struct Nivfive: Codable, Identifiable, Hashable {
    static public func ==  (_ a:Nivfive, _ b:Nivfive) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public var id:Int
    var tid:TID?
    
    var nom:String = ""
    
    init(_ nivfour:TID) {
        let fivetid = TID(nivfour)
        tid = fivetid
        id = fivetid.five!
    }
}
