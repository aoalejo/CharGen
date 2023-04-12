//
//  DistributorFocusOnWeight.swift
//  CharGen
//
//  Created by AlejoVx on 11/04/2023.
//

import Foundation

class DistributorFocusOnWeight: Distributor {
    func generateRanges(items: [Item], pointsAvailable: Double, pointsToDistribute: Double) -> [ClosedRange<Double>] {
        print("\nnew generation")

        var counter = 0.0
        var ranges = [ClosedRange<Double>]()

        items.forEach { item in
            let upperBound = counter + pow(item.weight, 2.0)

            let range = (counter + 1)...(upperBound)

            ranges.append(range)
            print("Name: \(item.name) Range: \(upperBound - counter) with \(item.points) points and weight of \(item.weight)")

            counter = upperBound
        }

        return ranges
    }
}
