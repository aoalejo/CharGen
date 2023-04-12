//
//  Rule.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 03/04/2023.
//

import Foundation

protocol Rule {
    var itemsAffected: [String] { get }
    var affectsAll: Bool { get }
    var description: String { get }

    func isValid(items: [Item], pointsAvailable: Double, pointsToDistribute: Double, indexOfItem: Int, steps: Int) -> Bool
}

extension Rule {
    func isAffected(item: Item) -> Bool {
        guard !affectsAll else { return true }

        return itemsAffected.contains(item.name)
    }
}
