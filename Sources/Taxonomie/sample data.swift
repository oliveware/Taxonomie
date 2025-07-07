//
//  sample data.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

public let classification = """
{"items" : [
    {   "id":1, "nom":"Produits", 
        "nivones": [
            {"id":1, "nom":"niveau 1",
                "nivtwos":[
                    {"id":1, "nom":"électro-ménager",
                        "nivthrees":[
                            {"id":1,"nom":"four", "nivfours":[]}, 
                            {"id":2,"nom":"frigo", "nivfours":[]},
                            {"id":3,"nom":"plaques", "nivfours":[]}
                        ]
                    },
                    {"id":2, "nom":"mobilier",
                        "nivthrees":[
                            {"id":1,"nom":"chaise", "nivfours":[]}, 
                            {"id":2,"nom":"table", "nivfours":[]},
                            {"id":3,"nom":"armoire", "nivfours":[]}
                        ]
                    }
                ]
            }   
        ] 
    },
    {   "id":1, "nom":"Services", 
        "nivones": [
            {"id":1, "nom":"niveau 1",
                "nivtwos":[
                    {"id":1, "nom":"utility",
                        "nivthrees":[
                            {"id":1,"nom":"eau", "nivfours":[]}, 
                            {"id":2,"nom":"électricité", "nivfours":[
                                {"id":1,"nom":"heures creuses", "nivfives":[]},
                                {"id":2,"nom":"heures pleines", "nivfives":[]}
                            ]},
                            {"id":3,"nom":"gaz", "nivfours":[]}
                        ]
                    },
                    {"id":2, "nom":"telecom",
                        "nivthrees":[
                            {"id":1,"nom":"mobile", "nivfours":[]}, 
                            {"id":2,"nom":"internet", "nivfours":[]},
                            {"id":3,"nom":"cloud", "nivfours":[]}
                        ]
                    }
                ]
            }   
        ] 
    }
]}
"""

