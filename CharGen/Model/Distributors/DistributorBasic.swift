//
//  BasicDistributor.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 04/04/2023.
//

import Foundation

class DistributorBasic: Distributor {
    var ranges: [ClosedRange<Double>]? = nil

    func generateRanges(items: [Item], pointsAvailable: Double, pointsToDistribute: Double) -> [ClosedRange<Double>] {
        if let ranges = ranges { return ranges }
        var counter = 0.0
        var ranges = [ClosedRange<Double>]()

        items.forEach { item in
            let upperBound = counter + item.weight

            let range = (counter + 1)...(upperBound)

            ranges.append(range)

            counter = upperBound
        }

        self.ranges = ranges
        return ranges
    }
}
