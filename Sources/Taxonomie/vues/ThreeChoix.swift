//
//  ThreeVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct ThreeChoix : View {
    @Binding var choix:Int
    @Binding var tid: TID
    @Binding var niveau: Niveau
    
    init (_ choix: Binding<Int>, _ tid:Binding<TID>, _ niveau:Binding<Niveau>) {
        _choix = choix
        _tid = tid
        _niveau = niveau
        
    }
    
    var body:some View {
        if choix == 3 {
            if let nivtwo = niveau.two {
                ScrollView {
                    ForEach(nivtwo.three){
                        item in
                        Button(action:{
                            if niveau.three == item {
                            } else {
                                niveau.three = item
                                choix = 4
                            }
                        })
                        {Text(item.nom)}
                    }
                }
            } else {
                Button(action:{ choix = 3 })
                { Text(niveau.three?.nom ?? "choisir") }
            }
        }
    }
}

