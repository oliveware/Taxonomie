//
//  sample data.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

public let classification = """
{"items" : [
    {   "id":1, "nom":"produit", 
        "one": [
            {"id":1, "nom":"durable",
                "two":[
                    {"id":1, "nom":"électro-ménager",
                        "three":[
                            {"id":1,"nom":"four", "four":[],"items":[]}, 
                            {"id":2,"nom":"frigo", "four":[],"items":[]},
                            {"id":3,"nom":"plaques", "four":[],"items":[]}
                        ]
                    },
                    {"id":2, "nom":"mobilier",
                        "three":[
                            {"id":1,"nom":"chaise", "four":[],"items":[]}, 
                            {"id":2,"nom":"table", "four":[],"items":[]},
                            {"id":3,"nom":"armoire", "four":[],"items":[]}
                        ]
                    }
                ]
            },
            {"id":2, "nom":"consommable",
                "two":[
                    {"id":1, "nom":"nourriture",
                        "three":[
                            {"id":1,"nom":"riz", "four":[],"items":[]}, 
                            {"id":2,"nom":"pain", "four":[],"items":[]},
                            {"id":3,"nom":"fruits", "four":[], "items":[
                                {"id":1,"nom":"pomme","cond": {"conserve":"frais", "contenant": ""}},
                                {"id":2,"nom":"poire","cond": {"conserve":"frais", "contenant": ""}},
                                {"id":3,"nom":"pomme","cond": {"conserve":"conserve", "contenant": "boite"}}
                                ]
                            },
                            {"id":4,"nom":"légumes", "four":[],"items":[
                                {"id":1,"nom":"pomme de terre","cond": {"conserve":"frais", "contenant": ""}},
                                {"id":2,"nom":"poireau","cond": {"conserve":"frais", "contenant": ""}},
                                {"id":3,"nom":"haricot","cond": {"conserve":"conserve", "contenant": "boite"}}
                            ]
                            }
                        ],"items":[]
                    },
                    {"id":2, "nom":"entretien",
                        "three":[
                            {"id":1,"nom":"lessive", "four":[],"items":[]}, 
                            {"id":2,"nom":"savon", "four":[],"items":[]},
                            {"id":3,"nom":"douche", "four":[],"items":[]}
                        ],"items":[]
                    }
                ]
            }    
        ] 
    },
    {   "id":2, "nom":"service", 
        "one": [
            {"id":1, "nom":"eau 1",
                "two":[
                    {"id":1, "nom":"utility",
                        "three":[
                            {"id":1,"nom":"eau", "four":[],"items":[]}, 
                            {"id":2,"nom":"électricité", "four":[
                                {"id":1,"nom":"heures creuses", "five":[],"items":[]},
                                {"id":2,"nom":"heures pleines", "five":[],"items":[]}
                            ],"items":[]},
                            {"id":3,"nom":"gaz", "four":[],"items":[]}
                        ],"items":[]
                    },
                    {"id":2, "nom":"telecom",
                        "three":[
                            {"id":1,"nom":"mobile", "four":[],"items":[]}, 
                            {"id":2,"nom":"internet", "four":[],"items":[]},
                            {"id":3,"nom":"cloud", "four":[],"items":[]}
                        ],"items":[]
                    }
                ]
            }   
        ] 
    }
]}
"""

public let taxonomie = """
{"items" : [
    {"id":1, "nom":"produit", "one": [
            {"id":1, "nom":"durable", "two":[
                    {"id":1, "nom":"électro-ménager", "three":[
                            {"id":1,"nom":"four", "four":[]}, 
                            {"id":2,"nom":"frigo", "four":[]},
                            {"id":3,"nom":"plaques", "four":[]},
                            {"id":4,"nom":"lave-linge", "four":[]},
                            {"id":5,"nom":"lave-vaisselle", "four":[]}
                        ]
                    },
                    {"id":2, "nom":"mobilier", "three":[
                            {"id":1,"nom":"chaise", "four":[]}, 
                            {"id":2,"nom":"table", "four":[]},
                            {"id":3,"nom":"armoire", "four":[]}
                        ]
                    },
                    {"id":3, "nom":"chauffage", "three":[
                            {"id":1,"nom":"radiateur", "four":[]}
                        ]
                    },
                    {"id":4, "nom":"sanitaire", "three":[
                            {"id":1,"nom":"lavabo", "four":[]},
                            {"id":2,"nom":"douche", "four":[]},
                            {"id":3,"nom":"baignoire", "four":[]},
                            {"id":4,"nom":"robinet", "four":[]},
                            {"id":5,"nom":"WC", "four":[]}
                        ]
                    }
                ]
            },
            {"id":2, "nom":"consommable", "two":[
                    {"id":1, "nom":"nourriture", "three":[
                            {"id":1,"nom":"riz", "four":[]}, 
                            {"id":2,"nom":"pain", "four":[]},
                            {"id":3,"nom":"fruits", "four":[
                                {"id":1,"nom":"abricot","five":[]},
                                {"id":2,"nom":"ananas","five":[]},
                                {"id":3,"nom":"avocat","five":[]},
                                {"id":4,"nom":"citron","five":[]},
                                {"id":5,"nom":"clémentine","five":[]},
                                {"id":6,"nom":"datte","five":[]},
                                {"id":7,"nom":"figue","five":[]},
                                {"id":8,"nom":"fraise","five":[]},
                                {"id":9,"nom":"kiwi","five":[]},
                                {"id":10,"nom":"orange","five":[]},
                                {"id":11,"nom":"pomme","five":[]},
                                {"id":12,"nom":"poire","five":[]},
                                {"id":13,"nom":"pomelos","five":[]},
                                {"id":14,"nom":"prune","five":[]},
                                {"id":15,"nom":"cerise","five":[]}
                                ]
                            },
                            {"id":4,"nom":"légumes", "four":[
                                {"id":1,"nom":"pomme de terre","five":[]},
                                {"id":2,"nom":"poireau","five":[]},
                                {"id":3,"nom":"haricot","five":[]}
                            ]
                            }
                        ]
                    },
                    {"id":2, "nom":"entretien", "three":[
                            {"id":1,"nom":"lessive", "four":[]}, 
                            {"id":2,"nom":"savon", "four":[]},
                            {"id":3,"nom":"douche", "four":[]}
                        ]
                    },
                    {"id":3,"nom":"eau", "three":[
                        {"id":1,"nom":"potable", "four":[
                            {"id":1,"nom":"minérale", "five":[
                                {"id":1,"nom":"plate"},
                                {"id":2,"nom":"pétillante"}
                            ]},
                            {"id":2,"nom":"robinet", "five":[]}
                            ]
                        },
                        {"id":2,"nom":"non potable", "four":[]}
                        ]
                    },  
                    {"id":4,"nom":"électricité", "three":[]},
                    {"id":5,"nom":"carburant", "three":[
                        {"id":1,"nom":"gaz", "four":[]},
                        {"id":2,"nom":"essence", "four":[]},
                        {"id":3,"nom":"gasoil", "four":[]},
                        {"id":4,"nom":"GPL", "four":[]},
                        {"id":5,"nom":"fuel", "four":[]}
                        ]
                    },
                    {"id":6,"nom":"telecom", "three":[
                        {"id":1,"nom":"mobile", "four":[]}, 
                        {"id":2,"nom":"internet", "four":[]},
                        {"id":3,"nom":"cloud", "four":[]}
                        ]
                    },
                    {"id":7,"nom":"papeterie", "three":[]},
                    {"id":8,"nom":"électricité", "three":[]}
                ] 
            }
        ] 
    },
    {"id":2, "nom":"service", "one": [
        {"id":1, "nom":"location", "two":[
            {"id":1, "nom":"logement", "three":[
                {"id":1,"nom":"non meublé", "four":[]},
                {"id":2,"nom":"meublé", "four":[]}
                ]
            },
            {"id":2, "nom":"garage", "three":[]}
            ]
        },
        {"id":2, "nom":"assurance", "two":[
            {"id":1,"nom":"mutuelle", "three":[]},
            {"id":2,"nom":"auto", "three":[]},
            {"id":3,"nom":"habitation", "three":[
                {"id":1,"nom":"propriétaire", "four":[]},
                {"id":2,"nom":"locataire", "four":[]}
                ]
            },
            {"id":4,"nom":"multiple", "three":[]},
            {"id":5,"nom":"réparation", "three":[]}
        ]},
        {"id":3, "nom":"médecin", "two":[]} 
    ]},
    {"id":3, "nom":"cotisation", "one":[
        {"id":1, "nom":"socicale", "two":[
            {"id":1, "nom":"URSSAF", "three":[]},
            {"id":2, "nom":"CSG", "three":[]}
                ]
        },
        {"id":2, "nom":"association", "two":[]},
        {"id":3, "nom":"syndicale", "two":[]}
        ]
    },
    {"id":4, "nom":"impôt", "one":[
        {"id":1,"nom":"revenu", "two":[]},
        {"id":2,"nom":"taxe habitation", "two":[]},
        {"id":3,"nom":"taxe foncière", "two":[]},
        {"id":4,"nom":"TVA", "two":[]}
    ]}
]}
"""

