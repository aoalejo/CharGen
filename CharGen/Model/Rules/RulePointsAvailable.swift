//
//  RulePointsAvailable.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 03/04/2023.
//

import Foundation

class RulePointsAvailable: Rule {
    var description: String = "Points Use Exceeded"
    var itemsAffected: [String] = []
    var affectsAll: Bool = true

    func isValid(items: [Item], pointsAvailable: Double, pointsToDistribute: Double, indexOfItem: Int, steps: Int) -> Bool {
        return pointsAvailable >= items[indexOfItem].costForNext(step: steps)
    }
}
