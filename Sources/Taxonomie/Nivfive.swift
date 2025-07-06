//
//  Nivfive.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

struct Nivfive {
    public var id:Int
    var tid:TID?
    
    init(_ nivfour:TID) {
        let nivfiveid = TID(nivfour)
        tid = nivfiveid
        id = nivfiveid.nivfive!
    }
}
