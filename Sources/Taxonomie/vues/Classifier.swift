//
//  Classifier.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

import SwiftUI

struct Classifier: View {
    
    @Binding var tid:TID
    @State var niveau : Niveau
    var taxonomy: Globalset
    
    @State private var choix = 0
    
    init(_ tid:Binding<TID>, _ taxonomy:Globalset) {
        _tid = tid
        niveau = Niveau(taxonomy, tid.wrappedValue)
        self.taxonomy = taxonomy
    }
    
    var body:some View {
        HStack(alignment: .top) {
            Text("taxonomie")
           
            ZeroChoix($choix, $tid, $niveau, taxonomy)
            if choix > 0 {
                OneChoix($choix, $tid, $niveau)
                if choix > 1 {
                    TwoChoix($choix, $tid, $niveau)
                    if choix > 2  {
                        ThreeChoix($choix, $tid, $niveau)
                        if choix > 3  {
                            FourChoix($choix, $tid, $niveau)
                            if choix > 4  {
                                FourChoix($choix, $tid, $niveau)
                            }
                        }
                    }
                }
                
            }
        }
    }
}

struct ClassPreview: View {
    @State var tid = TID([0])
    
    var body:some View {
        Classifier($tid, Globalset(taxonomie)).frame(width:500, height:300)
    }
}

#Preview {
    ClassPreview()
}
