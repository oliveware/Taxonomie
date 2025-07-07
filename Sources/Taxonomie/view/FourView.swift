//
//  FourView.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//
import SwiftUI

struct FourView : View {
    @Binding var tid:TID
    var nivzero:Nivzero
    var nivone: Nivone
    var nivtwo: Nivtwo
    var nivthree : Nivthree
    @Binding var nivfour: Nivfour
    @Binding var nivfive : Nivfive
    
    var body:some View {
        if nivfour.nivfives.count > 0 {
            HStack {
                VStack {
                    Text("niveau 5")
                    ForEach($nivfour.nivfives){
                        item in
                        Button(action:{
                            nivfive = item.wrappedValue
                            tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id,
                                       nivfour.id, item.id])
                            nivfive.tid = tid
                        })
                        {
                            Text(item.wrappedValue.label).frame(width:100)
                        }
                    }
                }
                
                //FiveView(parcelle:$selected)
            }.frame(alignment:.leading)
        } else {
            if nivfour.nom != "" {
                Text("aucun nivfive défini dans " + nivfour.nom)
            }
        }
    }
}
