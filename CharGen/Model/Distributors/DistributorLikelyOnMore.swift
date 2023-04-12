//
//  DistributorLikelyOnMore.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

class DistributorLikelyOnMore: Distributor {
    func generateRanges(items: [Item], pointsAvailable: Double, pointsToDistribute: Double) -> [ClosedRange<Double>] {
        var counter = 0.0
        var ranges = [ClosedRange<Double>]()

        print("\nnew generation")

        items.forEach { item in
            let orderOfMagnitude = floor(log10(pointsToDistribute))
            let upperBound = max(counter + item.weight + ((pow(item.points, orderOfMagnitude)) / pointsToDistribute), counter + 2)
            print("Name: \(item.name) Range: \(upperBound - counter) with \(item.points) points and weight of \(item.weight)")

            let range = (counter + 1)...(upperBound)

            ranges.append(range)

            counter = upperBound
        }

        return ranges
    }
}
