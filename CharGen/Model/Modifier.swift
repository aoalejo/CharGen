//
//  Modifier.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

class Modifier {
    let type: ModifierType
    let items: [String: Double]

    init(type: ModifierType, items: [String : Double]) {
        self.type = type
        self.items = items
    }

    enum ModifierType {
        case Weight
        case Cost
    }
}
