//
//  NoLowsDistributor.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 04/04/2023.
//

import Foundation

class DistributorNoLows: Distributor {
    let maximunPerItem: Double

    init(maximunPerItem: Double) {
        self.maximunPerItem = maximunPerItem
    }

    func generateRanges(items: [Item], pointsAvailable: Double, pointsToDistribute: Double) -> [ClosedRange<Double>] {
        var counter = 0.0
        var ranges = [ClosedRange<Double>]()

        items.forEach { item in
            let upperBound = counter + item.calculateWeight(items: items, points: maximunPerItem)

            let range = (counter + 1)...(upperBound)

            ranges.append(range)

            counter = upperBound
        }

        return ranges
    }
}

fileprivate extension Item {
    func calculateWeight(items: [Item], points: Double) -> Double {
        return  max(weight * (points - (self.points)), 1)
    }
}
