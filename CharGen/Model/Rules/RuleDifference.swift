//
//  RuleDIfference.swift
//  CharGen
//
//  Created by AlejoVx on 11/04/2023.
//

import Foundation

class RuleDifference: Rule {
    var itemsAffected: [String]
    var affectsAll: Bool = false
    var description: String = "Some items cannot surpass a difference between the maximum of the affected items and the minimum"
    let difference: Double

    init(itemsAffected: [String], difference: Double) {
        self.difference = difference
        self.itemsAffected = itemsAffected
    }

    func isValid(items: [Item], pointsAvailable: Double, pointsToDistribute: Double, indexOfItem: Int, steps: Int) -> Bool {
        let itemsAffected = items.filter({ self.itemsAffected.contains($0.name) })

        let sorted = itemsAffected.sorted { lhs, rhs in
            lhs.points > rhs.points
        }

        let maximum = sorted.first?.points ?? 0
        let minimum = sorted.last?.points ?? 0

        return maximum <= minimum + difference
    }
}
