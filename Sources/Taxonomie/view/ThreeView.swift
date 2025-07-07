//
//  ThreeView.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

//
//  NivthreeView.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2024.
//
import SwiftUI

struct ThreeView: View {
    @Binding var tid:TID
    var nivzero:Nivzero
    var nivone: Nivone
    var nivtwo: Nivtwo
    @Binding var nivthree : Nivthree
    @Binding var nivfour : Nivfour
    @Binding var nivfive : Nivfive
    
    @State private var choix = false
    
    func choisir() {
        if nivthree.nivfours.count == 1 {
            let quart = nivthree.nivfours[0]
            nivfour = quart
            nivfive = Nivfive()
            tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, quart.id])
        } else {
            choix = true
        }
    }
    
    var body:some View {
        if nivthree.nivfours.count > 0 {
                HStack(alignment:.top)  {
                    VStack {
                        // TextField("",text:$nivthree.nom)
                        Text("niveau 4")
                        if !choix {
                            HStack {
                                Text(nivfour.nom).frame(width:150).padding(3)
                                if nivthree.nivfours.count > 1 {
                                    Button(action:{ choix = true })
                                    {Image(systemName: "chevron.down") }
                                }
                            }
                        } else {
                            ForEach($nivthree.nivfours){
                                item in
                                Button(action:{
                                    nivfour = item.wrappedValue
                                    nivfive = Nivfive()
                                    tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, item.id])
                                    choix = false
                                })
                                {
                                    Text(item.wrappedValue.nom).frame(width:100)
                                }
                            }
                        }
                    }
                    
                    FourView(tid:$tid, nivzero:nivzero, nivone:nivone, nivtwo:nivtwo, nivthree:nivthree, nivfour:$nivfour, nivfive:$nivfive)
                }.frame(alignment:.leading)
            
        } else {
            if nivthree.nom != "" {
                Text("aucun nivfour défini à " + nivthree.nom).padding(20)
            }
        }
    }
}

