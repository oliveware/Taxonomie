//
//  TID.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct TID : Codable, Identifiable, Equatable{
    public static var NA = TID([0,0,0,0,0,0])
    private static var next = (zero:0, one:0, two:0, three:0, four:0, five:0)
    static func nextinit(_ zeros: [Nivzero]) {
        let zero = zeros.count
        var one = 0
        var two = 0
        var three = 0
        var four = 0
        var five = 0
        for zero in zeros {
            one += zero.one.count
            for one in zero.one {
                two += one.two.count
                for two in one.two {
                    three += two.three.count
                    for three in two.three {
                        four += three.four.count
                        for four in three.four {
                            five += four.five.count
                        }
                    }
                }
            }
        }
        next = (zero:zero, one:one, two:two, three:three, four:four, five:five)
    }
    static func zero() -> Int {
        next.zero += 1 ; return next.zero
    }
    static func one() -> Int {
        next.one += 1 ; return next.one
    }
    static func two() -> Int {
        next.two += 1 ; return next.two
    }
    static func three() -> Int {
        next.three += 1 ; return next.three
    }
    static func four() -> Int {
        next.four += 1 ; return next.four
    }
    static func five() -> Int {
        next.five += 1 ; return next.five
    }
    
    var zero : Int
    var one : Int?
    var two : Int?
    var three : Int?
    var four : Int?
    var five : Int?
    
    // initialisation du niveau inférieur
    public init(_ tid:TID? = nil) {
        if let parent = tid {
            zero = parent.zero
            if let first = parent.one {
                one = first
                if let second = parent.two {
                    two = second
                    if let third = parent.three {
                        three = third
                        if let fourth = parent.four {
                            four = fourth
                            five = TID.five()
                        } else {
                            four = TID.four()
                        }
                    } else {
                        three = TID.three()
                    }
                } else {
                    two = TID.two()
                }
            } else {
                one = TID.one()
            }
        } else {
            zero = TID.zero()
        }
    }
    
    public init(_ tab:[Int]) {
        let div = tab.count
        if div > 0 && tab[0] > 0 {
            zero = tab[0]
            if div > 1 && tab[1] > 0 {
                one = tab[1]
                if div > 2   {
                    two = tab[2]
                    if div > 3 && tab[3] > 0  {
                        three = tab[3]
                        if div > 4 && tab[4] > 0  {
                            four = tab[4]
                            if div == 6 && tab[5] > 0  {
                                five = tab[5]
                            }
                        }
                    }
                }
            }
            print(self)
        } else {
            zero = TID.zero()
        }
    }
    
    public var id: String {
        var t = String(zero)
        if let co =  one {
            t = t + "-" + String(co)
            if let r = two {
                t = t + "-" + String(r)
                if let c = three {
                    t = t + "-" + String(c)
                    if let q = four {
                        t = t + "-" + String(q)
                        if let p = five {
                            t = t + "-" + String(p)
                        }
                    }
                }
            }
        }
        return t
    }
    
    
    public var tab: [Int] {
        var t : [Int] = [zero]
        if let co =  one {
            t.append(co)
            if let r = two {
                t.append(r)
                if let c = three {
                    t.append(c)
                    if let q = four {
                        t.append(q)
                        if let p = five {
                            t.append(p)
                        }
                    }
                }
            }
        }
        print(t)
        return t
    }
    
    public func belongsto(_ tid:TID) -> Bool {
        var belong = tid.zero == zero
        if belong {
            if let first = tid.one {
                if first == one {
                    if let second = tid.two {
                        if second == two {
                            if let third = tid.three {
                                if third == three {
                                    if let fourth = tid.four {
                                        if fourth == four {
                                            if let fifth = tid.five {
                                                belong = fifth == five
                                            }
                                        } else { belong = false }
                                    }
                                } else { belong = false }
                            }
                        } else { belong = false }
                    }
                } else { belong = false }
            }
        }
        return belong
    }
    
    mutating func reset(_ level:Int,_ id:Int) {
        if level == 0 { zero = id ; clear(1) }
        if level == 1 { one = id ; clear(2) }
        if level == 2 { two = id ; clear(3) }
        if level == 3 { three = id ; clear(4) }
        if level == 4 { four = id ; clear(5) }
        if level == 5 { five = id }
    }
    
    mutating func clear(_ level:Int) {
            if level > 0 {
                one = nil
                if level > 1 {
                    two = nil
                    if level > 2 {
                        three = nil
                        if level > 3 {
                            four = nil
                            if level > 4 {
                                five = nil
                            }
                        }
                    }
                }
            }
        
    }
    
    public static func == (a:TID, b:TID) -> Bool {
        a.zero == b.zero &&
        a.one == b.one &&
        a.two == a.two &&
        a.three == a.three &&
        a.four == a.four &&
        a.five == a.five
    }
}











