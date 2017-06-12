//
//  DataHelper.swift
//  Chinese Medicine
//
//  Created by Michael Castillo on 6/12/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import Foundation

typealias Dictionary = [String: Any]

protocol DictionaryExportable {
    func dictConversion() -> Dictionary
}
