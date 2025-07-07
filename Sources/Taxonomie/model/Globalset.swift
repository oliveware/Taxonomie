//
//  Globalset.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//
import Foundation

@MainActor
struct Globalset: Codable {
    
    var items : [Nivzero]
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let set = try! JSONDecoder().decode(Globalset.self, from: jsonData)
        self = set
        TID.nextinit(set.items)
    }
    
    subscript(_ id:Int) -> Nivzero? {
        var found : Nivzero?
        for nivzero in items {
            if nivzero.id == id {
                found = nivzero
                break
            }
        }
        return found
    }
}
