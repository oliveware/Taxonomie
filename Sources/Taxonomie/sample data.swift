//
//  sample data.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

let nivzeroset = """
[

    {   "id":1, "nom":"Produits", "nivzeros": [\(produits)] },

]}
"""

let produits = """
[
    {"id":1, "nom":"niveau 1",
        "nivtwos":[
            {"id":1, "nom":"Auvergne-Rhône-Alpes",
                "nivthrees":[
                    {"id":1,"nom":"Lyon", "nivfours":[]}, 
                    {"id":2,"nom":"Saint-Étienne", "nivfours":[]},
                    {"id":3,"nom":"Grenoble", "nivfours":[]}
                ]
            },
            {"id":2, "nom":"Bourgogne-Franche-Comté",
                "nivthrees":[
                    {"id":1,"nom":"Dijon", "nivfours":[]}, 
                    {"id":2,"nom":"Besançon", "nivfours":[]},
                    {"id":3,"nom":"Belfort", "nivfours":[]}
                ]
            }
        ]
    }   
]

"""
