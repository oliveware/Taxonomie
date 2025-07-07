//
//  TID.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

@MainActor
public struct TID : Codable, @preconcurrency Identifiable{
    public static var NA = TID([0,0,0,0,0])
    private static var next = (zero:0, one:0, two:0, three:0, four:0, five:0)
    static func nextinit(_ nivzeros: [Nivzero]) {
        var zero = nivzeros.count
        var one = 0
        var two = 0
        var three = 0
        var four = 0
        var five = 0
        for nivzero in nivzeros {
            one += nivzero.nivones.count
            for nivone in nivzero.nivones {
                two += nivone.nivtwos.count
                for nivtwo in nivone.nivtwos {
                    three += nivtwo.nivthrees.count
                    for nivthree in nivtwo.nivthrees {
                        four += nivthree.nivfours.count
                        for nivfour in nivthree.nivfours {
                            five += nivfour.nivfives.count
                        }
                    }
                }
            }
        }
        next = (zero:zero, one:one, two:two, three:three, four:four, five:five)
    }
    static func nivzero() -> Int {
        next.zero += 1 ; return next.zero
    }
    static func nivone() -> Int {
        next.one += 1 ; return next.one
    }
    static func nivtwo() -> Int {
        next.two += 1 ; return next.two
    }
    static func nivthree() -> Int {
        next.three += 1 ; return next.three
    }
    static func nivfour() -> Int {
        next.four += 1 ; return next.four
    }
    static func nivfive() -> Int {
        next.five += 1 ; return next.five
    }
    
    var nivzero : Int
    var nivone : Int?
    var nivtwo : Int?
    var nivthree : Int?
    var nivfour : Int?
    var nivfive : Int?
    
    // initialisation du niveau inférieur
    init(_ tid:TID? = nil) {
        if let parent = tid {
            nivzero = parent.nivzero
            if let first = parent.nivone {
                nivone = first
                if let second = parent.nivtwo {
                    nivtwo = second
                    if let third = parent.nivthree {
                        nivthree = third
                        if let fourth = parent.nivfour {
                            nivfour = fourth
                            nivfive = TID.nivfive()
                        } else {
                            nivfour = TID.nivfour()
                        }
                    } else {
                        nivthree = TID.nivthree()
                    }
                } else {
                    nivtwo = TID.nivtwo()
                }
            } else {
                nivone = TID.nivone()
            }
        } else {
            nivzero = TID.nivzero()
        }
    }
    
    public init(_ tab:[Int]) {
        let div = tab.count
        if div > 0 && tab[0] > 0 {
            nivzero = tab[0]
            if div > 1 && tab[1] > 0 {
                nivone = tab[1]
                if div > 2 && tab[2] > 0  {
                    nivtwo = tab[2]
                    if div > 3 && tab[3] > 0  {
                        nivthree = tab[3]
                        if div > 4 && tab[4] > 0  {
                            nivfour = tab[4]
                            if div == 6 && tab[5] > 0  {
                                nivfive = tab[5]
                            }
                        }
                    }
                }
            }
        } else {
            nivzero = TID.nivzero()
        }
    }
    
    public var id: String {
        var t = String(nivzero)
        if let co =  nivone {
            t = t + "-" + String(co)
            if let r = nivtwo {
                t = t + "-" + String(r)
                if let c = nivthree {
                    t = t + "-" + String(c)
                    if let q = nivfour {
                        t = t + "-" + String(q)
                        if let p = nivfive {
                            t = t + "-" + String(p)
                        }
                    }
                }
            }
        }
        return t
    }
}


enum Division : String, Codable {
    case nivone = "nivone"
    case nivtwo = "nivtwo"
    case nivthree = "nivthree"
    case nivfour = "nivfour"
    case nivfive = "nivfive"
}








