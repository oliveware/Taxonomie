//
//  Untitled.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct TwoChoix : View {
    @Binding var choix:Int
    @Binding var tid: TID
    @Binding var niveau: Niveau
    
    init (_ choix: Binding<Int>, _ tid:Binding<TID>, _ niveau:Binding<Niveau>) {
        _choix = choix
        _tid = tid
        _niveau = niveau
        
    }
    
    var body:some View {
        if choix == 2 {
            if let nivone = niveau.one {
                ScrollView {
                    ForEach(nivone.two){
                        item in
                        Button(action:{
                            if niveau.two == item {
                            } else {
                                niveau.two = item
                                choix = 3
                            }
                        })
                        {Text(item.nom)}
                    }
                }
            } else {
                Button(action:{ choix = 2 })
                { Text(niveau.two?.nom ?? "choisir") }
            }
        }
    }
}
