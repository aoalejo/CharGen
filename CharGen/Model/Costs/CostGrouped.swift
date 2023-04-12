//
//  CostGrouped.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

class CostGrouped: Cost {
    var costs: [ItemCost]

    init(costs: [ItemCost]) {
        self.costs = costs
    }

    func getCost(for value: Double) -> Double {
        costs.first(where: { $0.range.contains(value) })?.cost ?? costs.first?.cost ?? Double(value)
    }

    func apply(newValue: Double) {
        var newCosts = [ItemCost]()

        costs.forEach { item in
            newCosts.append(ItemCost(range: item.range, cost: item.cost + newValue))
        }

        self.costs = newCosts
    }
}

struct ItemCost {
    let range: ClosedRange<Double>
    var cost: Double
}
