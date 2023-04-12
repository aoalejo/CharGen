//
//  Section.swift
//  CharacterGeneratorExample
//
//  Created by Alejo Arué Ocampo on 03/04/2023.
//

import Foundation

class Section {
    private var rules: [Rule] = []
    private var distributor: Distributor
    private(set) var items: [Item] = []
    private var step: Int

    init(rules: [Rule], items: [Item], distributor: Distributor, step: Int = 1) {
        self.rules = rules
        self.items = items
        self.distributor = distributor
        self.step = step
    }

    func apply(modifier: Modifier) {
        items.apply(modifier)
    }

    @discardableResult
    func distribute(points: Double) -> String {
        var ranges = distributor.generateRanges(items: items, pointsAvailable: points, pointsToDistribute: points)
        var usedPoints = 0.0
        var failures = 0
        var log = "Started at: \(Date.now.ISO8601Format())"

        while (usedPoints < points && failures < items.count * 20) {
            ranges = distributor.generateRanges(items: items, pointsAvailable: points, pointsToDistribute: points)
            log.append(ranges.description())
            if let index = ranges.indexOf(Double.random(in: 0...ranges.upperBound)) {
                if let ruleFailing = rules.first(where: {!$0.isValid(items: items, pointsAvailable: points - usedPoints, pointsToDistribute: points, indexOfItem: index, steps: step)}) {
                    log.append("\nRule fails! \(ruleFailing.description) failures: \(failures)")

                    failures += 1
                } else {
                    log.append("\nAdding point to \(items[index].name) (\(items[index].points)), available: \(points - usedPoints)")
                    usedPoints += items[index].actualCost
                    items[index].points += Double(step)
                }
            } else {
                failures += 1
            }
        }

        log.append("\nFinished at: \(Date.now.ISO8601Format())")
        return log
    }
}

fileprivate extension Array where Element == ClosedRange<Double> {
    var upperBound: Double {
        self.last?.upperBound ?? 1.0
    }

    func indexOf(_ point: Double) -> Int? {
        self.firstIndex(where: { $0.contains(point) })
    }

    func description() -> String {
        var result = "\n0|"
        self.forEach { range in
            result.append("\(range.upperBound)|")
        }
        return result
    }
}
