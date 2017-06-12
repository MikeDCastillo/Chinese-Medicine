//
//  Pulse.swift
//  Chinese Medicine
//
//  Created by Michael Castillo on 6/12/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

struct Pulse {

    let id: String?
    let tongueTypes: [String]
    let tongueDescription: String
    let pathologies: [String]
    let pynyin: String
    let americanName: String
    let etiology: String
    let image: UIImage?
 
    //Property Descriptions
//        id = database id
//        tongueTypes = types of TCM tongues
//        tongueDescription = description of Tongue Types
//        pathologies = TCM treatment/deficiencies
//        pynyin = Chinese names
//        americanName = do i really have to give details?
//        etiology = detailed synopsis of condition
//    URL Reference -> https://www.sacredlotus.com/go/diagnosis-chinese-medicine/get/4-pillars-pulse-images-tcm-diagnosis#float
    
    init(id: String? = nil, tongueTypes: [String], tongueDescription: String, pathologies: [String], pynyin: String, americanName: String, etiology: String, image: UIImage? = nil) {
        
        self.id = id
        self.tongueTypes = tongueTypes
        self.tongueDescription = tongueDescription
        self.pathologies = pathologies
        self.pynyin = pynyin
        self.americanName = americanName
        self.etiology = etiology
        self.image = image
    }
    
}


// MARK: - Func for Dictionary Representation

extension Pulse: DictionaryExportable {
    
    func dictConversion() -> Dictionary {
        var dictionaryRepresentation = [String: Any]()
        
        dictionaryRepresentation[Keys.id] = id
        dictionaryRepresentation[Keys.tongueTypes] = tongueTypes
        dictionaryRepresentation[Keys.tongueDescription] = tongueDescription
        dictionaryRepresentation[Keys.pathologies] = pathologies
        dictionaryRepresentation[Keys.pynyin] = pynyin
        dictionaryRepresentation[Keys.americanName] = americanName
        dictionaryRepresentation[Keys.etiology] = etiology
        dictionaryRepresentation[Keys.image] = image
        
        return dictionaryRepresentation
    }
}
