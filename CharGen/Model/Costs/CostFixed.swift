//
//  CostFixed.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

class CostFixed: Cost {
    var cost: Double

    init(cost: Double) {
        self.cost = cost
    }

    func getCost(for value: Double) -> Double {
        return cost
    }

    func apply(newValue: Double) {
        self.cost = newValue
    }
}
