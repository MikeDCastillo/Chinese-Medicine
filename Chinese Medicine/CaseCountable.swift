//
//  CaseCountable.swift
//  Chinese Medicine
//
//  Created by Michael Castillo on 6/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import Foundation

// enum which provides a count of its cases
protocol CaseCountable { }


// provide a default implementation to count the cases for Int enums assuming starting at 0 and contiguous
extension CaseCountable where Self : RawRepresentable, Self.RawValue == Int {
    // count the number of cases in the enum
    static var caseCount: Int {
        // starting at zero, verify whether the enum can be instantiated from the Int and increment until it cannot
        var count = 0
        while let _ = Self(rawValue: count) { count += 1 }
        return count
    }
}
