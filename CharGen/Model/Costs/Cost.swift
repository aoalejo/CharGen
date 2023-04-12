//
//  Cost.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

protocol Cost {
    func getCost(for value: Double) -> Double
    func apply(newValue: Double)
}

struct Costs {
    static var costOne: Cost {
        CostFixed(cost: 1)
    }

    static var costTwo: Cost {
        CostFixed(cost: 2)
    }

    static var costThree: Cost {
        CostFixed(cost: 3)
    }

    static var costAttribute: Cost {
        CostGrouped(costs: [
            ItemCost(range: 1...8, cost: 1),
            ItemCost(range: 9...9, cost: 2),
            ItemCost(range: 10...11, cost: 5),
            ItemCost(range: 12...15, cost: 10)
        ])
    }
}
