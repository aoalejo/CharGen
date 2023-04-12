import Foundation

struct Item: Equatable, Identifiable {
    var id: String { name }

    let name: String
    var weight: Double
    var points: Double
    var cost: Cost

    var associatedObject: Any? = nil

    init(name: String, cost: Cost = CostFixed(cost: 1), weight: Double = 10, points: Double = 0, associatedObject: Any? = nil) {
        self.name = name
        self.weight = weight
        self.points = points
        self.cost = cost
        self.associatedObject = associatedObject
    }

    init( _ name: String, _ weight: Double = 10) {
        self.name = name
        self.weight = weight
        self.points = 0
        self.cost = CostFixed(cost: 1)
    }

    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.name == rhs.name
    }

    mutating func add(points: Double) {
        self.points += points
    }

    func costForNext(step: Int) -> Double {
        cost.getCost(for: self.points + Double(step))
    }

    var actualCost: Double {
        cost.getCost(for: self.points)
    }

    mutating func add(weight: Double) {
        self.weight = self.weight + weight
    }

    var description: String {
        "name: \(name), weight: \(weight), points: \(points)"
    }

    mutating func apply(_ modifier: Modifier) {
        if let modifierValue = modifier.items.first(where: { $0.key == self.name }) {
            switch modifier.type {
            case Modifier.ModifierType.Cost:
                cost.apply(newValue: modifierValue.value)
            case Modifier.ModifierType.Weight:
                weight += modifierValue.value
            }
        }
    }
}

extension Array where Element == Item {
    mutating func apply(_ modifier: Modifier) {
        for index in 0...self.count - 1 {
            self[index].apply(modifier)
        }
    }

    var average: Double {
        Double(self.map({ $0.weight }).reduce(0.0, +) / Double(self.count))
    }
}
