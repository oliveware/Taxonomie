//
//  FiveChoix.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//

import SwiftUI

struct FiveChoix : View {
    @Binding var choix:Int
    @Binding var tid: TID
    @Binding var niveau: Niveau
    
    init (_ choix: Binding<Int>, _ tid:Binding<TID>, _ niveau:Binding<Niveau>) {
        _choix = choix
        _tid = tid
        _niveau = niveau
        
    }
    
    var body:some View {
        if choix == 5 {
            if let nivfour = niveau.four {
                ScrollView {
                    ForEach(nivfour.five){
                        item in
                        Button(action:{
                            if niveau.five == item {
                            } else {
                                niveau.five = item
                                choix = 7
                            }
                        })
                        {Text(item.nom)}
                    }
                }
            } else {
                Button(action:{ choix = 5 })
                { Text(niveau.five?.nom ?? "choisir") }
            }
        }
    }
}
