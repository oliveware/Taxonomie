//
//  OneVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct OneChoix : View {
    @Binding var choix:Int
    @Binding var tid: TID
    @Binding var niveau: Niveau
    
    init (_ choix: Binding<Int>, _ tid:Binding<TID>, _ niveau:Binding<Niveau>) {
        _choix = choix
        _tid = tid
        _niveau = niveau
        
    }
    
    var body:some View {
        if choix == 1 {
            if let nivzero = niveau.zero {
                ScrollView {
                    ForEach(nivzero.one){
                        item in
                        Button(action:{
                            if niveau.one == item {
                            } else {
                                niveau.one = item
                                choix = 2
                            }
                        })
                        {Text(item.nom)}
                    }
                }
            } else {
                Button(action:{ choix = 1 })
                { Text(niveau.one?.nom ?? "choisir") }
            }
        }
    }
}
