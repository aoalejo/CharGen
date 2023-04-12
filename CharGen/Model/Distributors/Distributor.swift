//
//  Distributor.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 04/04/2023.
//

import Foundation

protocol Distributor {
    func generateRanges(items: [Item], pointsAvailable: Double, pointsToDistribute: Double) -> [ClosedRange<Double>]
}
