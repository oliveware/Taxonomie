//
//  ZeroChoix.swift
//  Taxonomie
//
//  Created by Herve Crespel on 19/07/2025.
//
import SwiftUI

struct ZeroChoix : View {
    @Binding var choix:Int
    @Binding var tid: TID
    @Binding var niveau: Niveau
    var taxonomy: Globalset
    
    init (_ choix: Binding<Int>, _ tid:Binding<TID>, _ niveau:Binding<Niveau>, _ taxonomy:Globalset) {
        _choix = choix
        _tid = tid
        _niveau = niveau
        self.taxonomy = taxonomy
    }
    
    var body:some View {
        if choix == 0 {
            ScrollView {
                ForEach(taxonomy.items){
                    item in
                    Button(action:{
                        if niveau.zero == item {
                        } else {
                            niveau.zero = item
                            choix = 1
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
            Button(action:{ choix = 0 })
            { Text(niveau.nom) }
        }
    }
}
