//
//  RuleMaxPercentaje.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

class RuleMaxPercentaje: Rule {
    var itemsAffected: [String]
    var affectsAll: Bool = false
    var description: String = "Some items cannot surpass the maximun points used based on the %"
    let percentaje: Double

    init(itemsAffected: [String], percentaje: Double) {
        self.percentaje = percentaje
        self.itemsAffected = itemsAffected
    }

    func isValid(items: [Item], pointsAvailable: Double, pointsToDistribute: Double, indexOfItem: Int, steps: Int) -> Bool {
        let itemsAffected = items.filter({ self.itemsAffected.contains($0.name) })

        let sum = itemsAffected.map({ $0.points }).reduce(0, +)

        return sum < pointsToDistribute * percentaje
    }
}
