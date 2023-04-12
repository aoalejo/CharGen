//
//  ItemsCategories.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

extension Item {
    static var abilities: [Item] {
        var array = [Item]()

        array.append(Item(name: .primary, cost: Costs.costOne, points: 0))
        array.append(Item(name: .secondary, cost: Costs.costOne, points: 0))

        return array
    }

    static var primary: [Item] {
        var array = [Item]()

        array.append(Item(name: .attack, cost: Costs.costOne, points: 0))
        array.append(Item(name: .parry, cost: Costs.costOne, points: 0))
        array.append(Item(name: .dodge, cost: Costs.costOne, points: 0))
        array.append(Item(name: .wear_armor, cost: Costs.costOne, points: 0))

        return array
    }

    static var attributes: [Item] {
        var array = [Item]()

        array.append(Item(name: .force, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .agility, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .dexterity, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .constitution, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .perception, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .intelligence, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .will_power, cost: Costs.costAttribute, points: 3))
        array.append(Item(name: .magic_power, cost: Costs.costAttribute, points: 3))

        return array
    }

    static var skills: [Item] {
        var array = [Item]()

        array.append(Item(name: .stunts))
        array.append(Item(name: .athletics))
        array.append(Item(name: .mount))
        array.append(Item(name: .swim))
        array.append(Item(name: .climb))
        array.append(Item(name: .hop))
        array.append(Item(name: .pilot))
        array.append(Item(name: .style))
        array.append(Item(name: .intimidate))
        array.append(Item(name: .leadership))
        array.append(Item(name: .persuasion))
        array.append(Item(name: .trade))
        array.append(Item(name: .wandering))
        array.append(Item(name: .etiquette))
        array.append(Item(name: .warn))
        array.append(Item(name: .look))
        array.append(Item(name: .seek))
        array.append(Item(name: .animals))
        array.append(Item(name: .science))
        array.append(Item(name: .law))
        array.append(Item(name: .herbalist))
        array.append(Item(name: .history))
        array.append(Item(name: .tactic))
        array.append(Item(name: .medicine))
        array.append(Item(name: .memorize))
        array.append(Item(name: .navigation))
        array.append(Item(name: .occultism))
        array.append(Item(name: .appraisal))
        array.append(Item(name: .magic_valoration))
        array.append(Item(name: .coldness))
        array.append(Item(name: .feats_of_strength))
        array.append(Item(name: .pain_resistance))
        array.append(Item(name: .locksmith))
        array.append(Item(name: .disguise))
        array.append(Item(name: .hide))
        array.append(Item(name: .heist))
        array.append(Item(name: .stealth))
        array.append(Item(name: .trappery))
        array.append(Item(name: .poisons))
        array.append(Item(name: .art))
        array.append(Item(name: .dance))
        array.append(Item(name: .forging))
        array.append(Item(name: .runes))
        array.append(Item(name: .alchemy))
        array.append(Item(name: .animism))
        array.append(Item(name: .music))
        array.append(Item(name: .hand_tricks))
        array.append(Item(name: .ritual_calligraphy))
        array.append(Item(name: .goldsmithy))
        array.append(Item(name: .confection))
        array.append(Item(name: .puppets))

        return array
    }
}
