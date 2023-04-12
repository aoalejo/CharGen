//
//  RuleMaxPointsInItem.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 04/04/2023.
//

import Foundation

class RuleMaxPointsInItem: Rule {
    var description: String = "Item cannot have that many points!"
    var itemsAffected: [String] = []
    var affectsAll: Bool = true
    var maxPoints: Double

    init(maxPoints: Double, affectsAll: Bool, itemsAffected: [String]) {
        self.maxPoints = maxPoints
        self.affectsAll = affectsAll
        self.itemsAffected = itemsAffected
    }

    init(maxPoints: Double) {
        self.maxPoints = maxPoints
        self.affectsAll = true
        self.itemsAffected = []
    }

    func isValid(items: [Item], pointsAvailable: Double, pointsToDistribute: Double, indexOfItem: Int, steps: Int) -> Bool {
        return (items[indexOfItem].points + 1.0) <= maxPoints
    }
}
