//
//  FourVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct FourChoix : View {
    @Binding var choix:Int
    @Binding var tid: TID
    @Binding var niveau: Niveau
    
    init (_ choix: Binding<Int>, _ tid:Binding<TID>, _ niveau:Binding<Niveau>) {
        _choix = choix
        _tid = tid
        _niveau = niveau
        
    }
    
    var body:some View {
        if choix == 4 {
            if let nivthree = niveau.three {
                ScrollView {
                    ForEach(nivthree.four){
                        item in
                        Button(action:{
                            if niveau.four == item {
                            } else {
                                tid.reset(4, item.id)
                               // niveau.reset(tid)
                            }
                            choix = 5
                        })
                        {Text(item.nom)}
                    }
                }
            } else {
                Button(action:{ choix = 4 })
                { Text(niveau.four?.nom ?? "choisir") }
            }
        }
    }
}
