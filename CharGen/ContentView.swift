//
//  ContentView.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State var skills: String = ""
    @State var traits: String = ""

    var body: some View {
        VStack {
            HStack {
                Text("Char Gen")
                Spacer()
                HStack {
                    Button("Generar") {
                        // First select traits:
                        let traits = Section(rules: [RuleMaxPointsInItem(maxPoints: 5)],
                                             items: Modifiers.asItems,
                                             distributor: DistributorLikelyOnMore())

                        traits.distribute(points: 2)

                        let selectedTraits = traits.items.filter({ $0.points > 0 })

                        self.traits = selectedTraits.map({ $0.name }).joined(separator: "\n")

                        // Second, select level
                        let level = Int.random(in: 1...5)

                        self.traits.append("\n\nLevel: \(level)")

                        // Distribute points in atributes
                        let attrPoints = 32.0 + Double(level%2)
                        let attributes = Section(rules: [RuleMaxPointsInItem(maxPoints: 10),
                                                         RulePointsAvailable()],
                                                 items: Item.attributes,
                                                 distributor: DistributorNoLows(maximunPerItem: 10))

                        selectedTraits.forEach { item in
                            if let modifier = item.associatedObject as? Modifier {
                                attributes.apply(modifier: modifier)
                            }
                        }

                        print(attributes.distribute(points: attrPoints))

                        self.skills = "Attributes:\n"
                        self.skills.append(attributes.items.map({ "\($0.name): \($0.points) (\($0.weight))"}).joined(separator: "\n"))

                        // Distribute points between primary and secondary
                        let points = Double(level) * 50
                        let abilities = Section(rules: [RuleMaxPercentaje(itemsAffected: [.primary],
                                                                          percentaje: 0.4),
                                                         RulePointsAvailable()],
                                                 items: Item.abilities,
                                                 distributor: DistributorBasic(),
                                                step: 10)

                        print(abilities.distribute(points: points))


                        // Distribute in primary abilities
                        let primary = Section(rules: [RulePointsAvailable(), RuleDifference(itemsAffected: [.attack, .parry, .dodge], difference: 50)], items: Item.primary, distributor: DistributorLikelyOnMore())

                        let pointsForPrimary = abilities.items.first(where: {$0.name == .primary})?.points ?? 1
                        print(primary.distribute(points: pointsForPrimary))
                        self.skills.append("\n\nPoints to distribute: \(points)")

                        self.skills.append("\n\nPrimary Skills (\(pointsForPrimary)):\n")
                        self.skills.append(primary.items
                            .map({ "\($0.name): \($0.points) (\($0.weight))"}).joined(separator: "\n"))

                        // Distribute skills

                        let skills = Section(rules: [RuleMaxPointsInItem(maxPoints: 100),
                                                     RulePointsAvailable()],
                                             items: Item.skills,
                                             distributor: DistributorFocusOnWeight(),
                                             step: 10)

                        selectedTraits.forEach { item in
                            if let modifier = item.associatedObject as? Modifier {
                                skills.apply(modifier: modifier)
                            }
                        }
                        let pointsForSecondary = abilities.items.first(where: {$0.name == .secondary})?.points ?? 1
                        print(skills.distribute(points: pointsForSecondary))
                        let itemSkills = skills.items.sorted(by: {$0.points > $1.points})

                        self.skills.append("\n\nSecondary Skills (\(pointsForSecondary)):\n")
                        self.skills.append(itemSkills.map({ "\($0.name): \($0.points) (\($0.weight))"}).joined(separator: "\n"))
                    }
                }
            }

            HStack {
                VStack {
                    Text("Skills")
                    ScrollView {
                        Text(skills)
                    }
                }

                VStack {
                    Text("Traits applied")
                    ScrollView {
                        Text(traits)
                    }
                }
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
