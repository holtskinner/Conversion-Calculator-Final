//
//  Converter.swift
//  Conversion Calculator
//
//  Created by Holt Skinner on 11/4/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import Foundation

struct Converter {

    var inputUnit: String
    var outputUnit: String

    var label: String {
        get {
            return inputUnit + " to " + outputUnit
        }
    }

}
