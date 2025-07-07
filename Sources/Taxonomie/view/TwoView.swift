//
//  TwoView.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

//
//  NivtwoView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct TwoView: View {
    @Binding var tid:TID
    var nivzero:Nivzero
    var nivone: Nivone
    @Binding var nivtwo: Nivtwo
    @Binding var nivthree : Nivthree
    @Binding var nivfour : Nivfour
    @Binding var nivfive : Nivfive
    
    @State private var choix = true
    @State private var ajout = false
    
    var body:some View {
        
        NavigationStack {
            VStack(alignment:.leading) {
        
                HStack(alignment:.top)  {
                    VStack(alignment:.leading) {
                        Text("nivthree")
                        if !choix && !(nivthree.nom == "") {
                            HStack {
                                Text(nivthree.nom).frame(width:120)
                                Button(action:{
                                    nivthree = Nivthree()
                                    nivfour = Nivfour()
                                    nivfive = Nivfive()
                                    choix = true
                                })
                                {Image(systemName: "chevron.down") }
                            }
                        } else {
                            ForEach($nivtwo.nivthrees){
                                item in
                                Button(action:{
                                    nivthree = item.wrappedValue
                                    if item.nivfours.count == 1 {
                                        nivfour = nivthree.nivfours[0]
                                    } else {
                                        nivfour = Nivfour()
                                    }
                                    nivfive = Nivfive()
                                    tid = tid([nivzero.id,nivone.id, nivtwo.id, item.id])
                                    choix = false
                                })
                                { Text(item.wrappedValue.nom).frame(width:120) }
                            }
                        }
                    }
                    
                    NivthreeView(tid:$tid, nivzero:Nivzero, nivone:nivone, nivtwo:nivtwo, nivthree:$nivthree, nivfour:$nivfour, nivfive:$nivfive)
                }.frame(alignment:.leading).padding(20)
                
                HStack (spacing: 20) {
                    GroupBox("tid") {
                        Text(tid.id)
                    }
                    if !nivfive.numvoie.isNaN {
                        VStack{
                            GroupBox("Adresse") {
                                Text(nivfive.adresse())
                            }
                            if nivfive.autrenumvoie != nil {
                                GroupBox("autre adresse") {
                                    Text(nivfive.adresse(nil,true))
                                }
                            }
                        }
                    }
                }.padding(20)
                
            }
       }
        
    }
    
    func add() {
        let new = Nivthree(tid)
        nivtwo.nivthrees.append(new)
        nivthree = new
        ajout = true
    }
}
