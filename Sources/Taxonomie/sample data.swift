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

