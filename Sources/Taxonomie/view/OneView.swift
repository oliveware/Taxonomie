//
//  OneView.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

import SwiftUI

struct OneView : View {
    @Binding var tid:TID
    @Binding var nivzero: Nivzero
    @Binding var nivone: Nivone
    @State var nivtwo = Nivtwo()
    @State var nivthree = Nivthree()
    @State var nivfour = Nivfour()
    @State var nivfive = Nivfive()
    

    var body:some View {
        NavigationSplitView {
            List {
                ForEach($nivone.nivtwos) { item in
                    if item.wrappedValue.avecnivfives {
                        NavigationLink {
                            NivtwoView(tid:$tid,  nivzero:Nivzero, nivone:nivone, nivtwo:item, nivthree:$nivthree, nivfour:$nivfour, nivfive:$nivfive )
                                .onChange(of:item.id) {
                                    nivtwo = item.wrappedValue
                                    nivthree = Nivthree()
                                    nivfour = Nivfour()
                                    nivfive = Nivfive()
                                    tid = tid([nivzero.id, nivone.id, item.id])
                                }
                        } label: {
                            Text(item.wrappedValue.nom)
                        }
                    }
                    
                }
              //  .onDelete(perform: deleteItems)
            }

#if os(macOS)
            .navigationSplitViewColumnWidth(min: 130, ideal: 150)
#endif

       } detail: {
            Text("Select an item")
        }

    }
}

struct NivonePreview : View {
    @State var nivzero = Nivzeroset.Europe
    @State var nivone = Nivone(produits)
    @State var tid = TID([1])
    
    var body:some View {
        OneView(tid:$tid, nivzero:$nivzero, nivone: $nivone)
            .frame(width:600,height:500)
    }
}

#Preview {
    NivonePreview()
}
