//
//  ZeroView.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import SwiftUI

struct ZeroView : View {
    @Binding var tid : TID
    @State var nivzero:Nivzero = Nivzeroset.Europe
    
    @State var selection = 0
    @State var edition = false
    @State var creation = false
    
    var body:some View {
        GroupBox(nivzero.nom) {
            VStack {
                TabView(selection: $selection) {
                    ForEach($nivzero.nivones){
                        nivone in
                        NivoneView(tid:$tid, nivzero:$nivzero, nivone:nivone)
                            .tabItem{Text(nivone.wrappedValue.nom)}.tag(nivone.id)
                            .onChange(of:nivone.id, {tid=tid([nivzero.id, nivone.id])})
                    }
                    
                }
              //  Button("ajouter un nivone",action:add)
               
            }
        }
    }
    func add() {
        nivzero.add()
      //  selected = Nivone()
      //  nivzero.nivones.append(Nivone($nivzero.tid))
    }
}


struct ZeroPreview : View {
    @State var tid = TID([])
    var nivzero = Nivzeroset.Europe
    
    var body:some View {
        ZeroView(tid:$tid, nivzero: nivzero)
            .frame(width:600,height:500)
    }
}

#Preview {
    ZeroPreview()
}
