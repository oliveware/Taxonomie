//
//  sample data.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

let nivzeros = """
{"sept" : [
    {   "id":7, "nom":"Antartique", "nivones": [] },
    {   "id":1, "nom":"Europe", "nivones": [\(nivun)] },
    {   "id":2, "nom":"Amérique du nord", "nivones": [] },
    {   "id":3, "nom":"Amérique du sud", "nivones": [] },
    {   "id":4, "nom":"Océanie", "nivones": [] },
    {   "id":5, "nom":"Asie", "nivones": [] },
    {   "id":6, "nom":"Afrique", "nivones": [] }
]}
"""

let nivun = """
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
"""
