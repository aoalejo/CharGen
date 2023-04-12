//
//  Modifiers.swift
//  CharGen
//
//  Created by AlejoVx on 09/04/2023.
//

import Foundation

fileprivate extension Double {
    /// Unlikely - an item that has a very low chance of being selected.
    static var unlikely: Double = -14
    /// Rare - an item that has a relatively low chance of being selected.
    static var rare: Double = -7
    /// Average - an item that has an equal chance of being selected as any other item.
    static var average: Double = 0
    /// Common - an item that has a relatively high chance of being selected.
    static var common: Double = 15
    /// Prioritized - an item that has a very high chance of being selected.
    static var prioritized: Double = 30
}

struct Modifiers {
    static var asItems: [Item] {
        var array = [Item]()

        array.append(Item(name: "Brave", associatedObject: Modifiers.Brave))
        array.append(Item(name: "Aggressive", associatedObject: Modifiers.Aggressive))
        array.append(Item(name: "Pacifist", associatedObject: Modifiers.Pacifist))
        array.append(Item(name: "Handyman", associatedObject: Modifiers.Handyman))
        array.append(Item(name: "Extrovert", associatedObject: Modifiers.Extrovert))
        array.append(Item(name: "Athletic", associatedObject: Modifiers.Athletic))
        array.append(Item(name: "Stealthy", associatedObject: Modifiers.Stealthy))
        array.append(Item(name: "Curious", associatedObject: Modifiers.Curious))
        array.append(Item(name: "Ruthless", associatedObject: Modifiers.Ruthless))
        array.append(Item(name: "Stoic", associatedObject: Modifiers.Stoic))
        array.append(Item(name: "Spiritual", associatedObject: Modifiers.Spiritual))
        array.append(Item(name: "Creative", associatedObject: Modifiers.Creative))
        array.append(Item(name: "Analytical", associatedObject: Modifiers.Analytical))
        array.append(Item(name: "Paranoid", associatedObject: Modifiers.Paranoid))
        array.append(Item(name: "Pessimistic", associatedObject: Modifiers.Pessimistic))
        array.append(Item(name: "Flamboyant", associatedObject: Modifiers.Flamboyant))
        array.append(Item(name: "Reclusive", associatedObject: Modifiers.Reclusive))
        array.append(Item(name: "Dominant", associatedObject: Modifiers.Dominant))
        array.append(Item(name: "Reclusive", associatedObject: Modifiers.Reclusive))
        array.append(Item(name: "Resilient", associatedObject: Modifiers.Resilient))
        array.append(Item(name: "Diplomatic", associatedObject: Modifiers.Diplomatic))
        array.append(Item(name: "Inventive", associatedObject: Modifiers.Inventive))
        array.append(Item(name: "Resourceful", associatedObject: Modifiers.Resourceful))
        array.append(Item(name: "Idealistic", associatedObject: Modifiers.Idealistic))

        return array
    }

    static var allModifiers: [Modifier] {
        var array = [Modifier]()

        array.append(Modifiers.Brave)
        array.append(Modifiers.Aggressive)
        array.append(Modifiers.Pacifist)
        array.append(Modifiers.Handyman)
        array.append(Modifiers.Extrovert)
        array.append(Modifiers.Athletic)
        array.append(Modifiers.Stealthy)
        array.append(Modifiers.Curious)
        array.append(Modifiers.Ruthless)
        array.append(Modifiers.Stoic)
        array.append(Modifiers.Spiritual)
        array.append(Modifiers.Creative)
        array.append(Modifiers.Analytical)
        array.append(Modifiers.Paranoid)
        array.append(Modifiers.Pessimistic)
        array.append(Modifiers.Naive)
        array.append(Modifiers.Flamboyant)
        array.append(Modifiers.Reclusive)
        array.append(Modifiers.Dominant)
        array.append(Modifiers.Reclusive)
        array.append(Modifiers.Resilient)
        array.append(Modifiers.Diplomatic)
        array.append(Modifiers.Inventive)
        array.append(Modifiers.Resourceful)
        array.append(Modifiers.Idealistic)

        return array
    }

    static var Brave: Modifier {
        return Modifier(type: .Weight, items:
                                [.force: .prioritized,
                                 .agility: .unlikely,
                                 .dexterity: .prioritized,
                                 .intelligence: .unlikely,
                                 .constitution: .prioritized,
                                 .will_power: .prioritized,
                                 .magic_power: .unlikely,
                                 .attack: .prioritized,
                                 .wear_armor: .unlikely,
                                 .athletics: .prioritized,
                                 .pilot: .unlikely,
                                 .intimidate: .prioritized,
                                 .leadership: .prioritized,
                                 .warn: .prioritized,
                                 .feats_of_strength: .prioritized,
                                 .pain_resistance: .prioritized,
                                 .stealth: .prioritized,
                                 .puppets: .average]
        )}

    static var Aggressive: Modifier {
        Modifier(type: .Weight, items: [.force: .prioritized,
                               .intelligence: .unlikely,
                               .magic_power: .unlikely,
                               .attack: .prioritized,
                               .wear_armor: .unlikely,
                               .athletics: .prioritized,
                               .pilot: .unlikely,
                               .intimidate: .prioritized,
                               .leadership: .unlikely,
                               .persuasion: .unlikely,
                               .etiquette: .unlikely,
                               .warn: .prioritized,
                               .animals: .unlikely,
                               .science: .unlikely,
                               .law: .unlikely,
                               .herbalist: .unlikely,
                               .history: .unlikely,
                               .medicine: .unlikely,
                               .memorize: .unlikely,
                               .occultism: .unlikely,
                               .appraisal: .unlikely,
                               .magic_valoration: .unlikely,
                               .feats_of_strength: .prioritized,
                               .locksmith: .unlikely,
                               .disguise: .unlikely,
                               .hide: .unlikely,
                               .heist: .unlikely,
                               .stealth: .unlikely,
                               .poisons: .unlikely,
                               .art: .unlikely,
                               .dance: .unlikely,
                               .forging: .unlikely,
                               .runes: .unlikely,
                               .alchemy: .unlikely,
                               .animism: .unlikely,
                               .music: .unlikely,
                               .hand_tricks: .unlikely,
                               .ritual_calligraphy: .unlikely,
                               .goldsmithy: .unlikely,
                               .confection: .unlikely,
                               .puppets: .unlikely]
        )
    }

    static var Pacifist: Modifier {
        Modifier(type: .Weight, items: [.force: .unlikely,
                               .intelligence: .prioritized,
                               .constitution: .prioritized,
                               .will_power: .prioritized,
                               .attack: .unlikely,
                               .dodge: .prioritized,
                               .stunts: .unlikely,
                               .style: .prioritized,
                               .intimidate: .unlikely,
                               .leadership: .prioritized,
                               .persuasion: .prioritized,
                               .trade: .prioritized,
                               .etiquette: .prioritized,
                               .look: .prioritized,
                               .seek: .prioritized,
                               .animals: .prioritized,
                               .science: .prioritized,
                               .law: .prioritized,
                               .herbalist: .prioritized,
                               .history: .prioritized,
                               .tactic: .prioritized,
                               .medicine: .prioritized,
                               .navigation: .prioritized,
                               .occultism: .prioritized,
                               .appraisal: .prioritized,
                               .feats_of_strength: .unlikely,
                               .pain_resistance: .unlikely,
                               .hide: .prioritized,
                               .heist: .unlikely,
                               .stealth: .prioritized,
                               .poisons: .unlikely,
                               .art: .prioritized,
                               .dance: .prioritized,
                               .runes: .prioritized,
                               .animism: .prioritized,
                               .music: .prioritized,
                               .hand_tricks: .prioritized,
                               .ritual_calligraphy: .prioritized,
                               .confection: .prioritized,
                               .puppets: .prioritized]
        )
    }

    static var Handyman: Modifier {
        Modifier(type: .Weight, items: [
            .perception: .prioritized,
            .magic_power: .unlikely,
            .persuasion: .prioritized,
            .trade: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .magic_valoration: .unlikely,
            .locksmith: .prioritized,
            .forging: .prioritized,
            .hand_tricks: .prioritized,
            .puppets: .average]
        )
    }

    static var Extrovert: Modifier {
        Modifier(type: .Weight, items: [
            .will_power: .prioritized,
            .style: .prioritized,
            .leadership: .prioritized,
            .persuasion: .prioritized,
            .trade: .prioritized,
            .wandering: .prioritized,
            .etiquette: .prioritized,
            .art: .prioritized,
            .dance: .prioritized,
            .music: .prioritized,
            .hand_tricks: .prioritized,
            .confection: .prioritized,
            .puppets: .prioritized]
        )
    }

    static var Athletic: Modifier {
        Modifier(type: .Weight, items: [.force: .prioritized,
                               .agility: .prioritized,
                               .dexterity: .prioritized,
                               .constitution: .prioritized,
                               .magic_power: .unlikely,
                               .stunts: .prioritized,
                               .athletics: .prioritized,
                               .mount: .prioritized,
                               .swim: .prioritized,
                               .climb: .prioritized,
                               .hop: .prioritized,
                               .feats_of_strength: .prioritized,
                               .puppets: .average]
        )
    }

    static var Stealthy: Modifier {
        Modifier(type: .Weight, items: [
            .agility: .prioritized,
            .dexterity: .prioritized,
            .perception: .prioritized,
            .magic_power: .unlikely,
            .dodge: .prioritized,
            .wear_armor: .unlikely,
            .style: .prioritized,
            .intimidate: .prioritized,
            .wandering: .prioritized,
            .warn: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .locksmith: .prioritized,
            .disguise: .prioritized,
            .hide: .prioritized,
            .heist: .prioritized,
            .stealth: .prioritized,
            .poisons: .prioritized,
            .puppets: .average]
        )
    }

    static var Curious: Modifier {
        Modifier(type: .Weight, items: [
            .intelligence: .prioritized,
            .perception: .prioritized,
            .trade: .prioritized,
            .wandering: .prioritized,
            .warn: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .animals: .prioritized,
            .science: .prioritized,
            .history: .prioritized,
            .memorize: .prioritized,
            .navigation: .prioritized,
            .occultism: .prioritized,
            .appraisal: .prioritized,
            .art: .prioritized,
            .dance: .prioritized,
            .alchemy: .prioritized,
            .animism: .prioritized,
            .ritual_calligraphy: .prioritized,
            .puppets: .average]
        )
    }

    static var Ruthless: Modifier {
        Modifier(type: .Weight, items: [.force: .prioritized,
                               .dexterity: .prioritized,
                               .constitution: .prioritized,
                               .attack: .prioritized,
                               .stunts: .prioritized,
                               .intimidate: .prioritized,
                               .leadership: .unlikely,
                               .tactic: .prioritized,
                               .coldness: .prioritized,
                               .feats_of_strength: .prioritized,
                               .heist: .prioritized,
                               .puppets: .average]
        )
    }

    static var Stoic: Modifier {
        Modifier(type: .Weight, items: [
            .constitution: .prioritized,
            .will_power: .prioritized,
            .parry: .prioritized,
            .dodge: .prioritized,
            .warn: .prioritized,
            .hide: .prioritized,
            .puppets: .average]
        )
    }

    static var Spiritual: Modifier {
        Modifier(type: .Weight, items: [
            .intelligence: .prioritized,
            .perception: .prioritized,
            .will_power: .prioritized,
            .magic_power: .prioritized,
            .wear_armor: .unlikely,
            .intimidate: .unlikely,
            .leadership: .prioritized,
            .persuasion: .prioritized,
            .wandering: .prioritized,
            .warn: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .animals: .prioritized,
            .herbalist: .prioritized,
            .medicine: .prioritized,
            .occultism: .prioritized,
            .magic_valoration: .prioritized,
            .alchemy: .prioritized,
            .animism: .prioritized,
            .ritual_calligraphy: .prioritized,
            .puppets: .average]
        )
    }

    static var Creative: Modifier {
        Modifier(type: .Weight, items: [
            .intelligence: .prioritized,
            .magic_power: .prioritized,
            .stunts: .prioritized,
            .style: .prioritized,
            .intimidate: .unlikely,
            .persuasion: .prioritized,
            .etiquette: .prioritized,
            .art: .prioritized,
            .dance: .prioritized,
            .music: .prioritized,
            .hand_tricks: .prioritized,
            .confection: .prioritized,
            .puppets: .prioritized]
        )
    }

    static var Analytical: Modifier {
        Modifier(type: .Weight, items: [
            .intelligence: .prioritized,
            .perception: .prioritized,
            .intimidate: .unlikely,
            .persuasion: .prioritized,
            .trade: .prioritized,
            .wandering: .unlikely,
            .warn: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .science: .prioritized,
            .law: .prioritized,
            .history: .prioritized,
            .tactic: .prioritized,
            .navigation: .prioritized,
            .occultism: .prioritized,
            .appraisal: .prioritized,
            .puppets: .average]
        )
    }

    static var Paranoid: Modifier {
        Modifier(type: .Weight, items: [
            .intelligence: .prioritized,
            .constitution: .prioritized,
            .perception: .prioritized,
            .style: .unlikely,
            .warn: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .tactic: .prioritized,
            .navigation: .prioritized,
            .hide: .prioritized,
            .stealth: .prioritized,
            .puppets: .average]
        )
    }

    static var Pessimistic: Modifier {
        Modifier(type: .Weight, items: [
            .intelligence: .prioritized,
            .perception: .prioritized,
            .intimidate: .unlikely,
            .persuasion: .unlikely,
            .wandering: .unlikely,
            .warn: .prioritized,
            .look: .prioritized,
            .coldness: .prioritized,
            .puppets: .average]
        )
    }

    static var Naive: Modifier {
        Modifier(type: .Weight, items: [.force: .unlikely,
                               .agility: .unlikely,
                               .dexterity: .unlikely,
                               .intelligence: .unlikely,
                               .constitution: .unlikely,
                               .perception: .unlikely,
                               .will_power: .unlikely,
                               .magic_power: .unlikely,
                               .attack: .unlikely,
                               .parry: .unlikely,
                               .dodge: .unlikely,
                               .wear_armor: .unlikely,
                               .stunts: .unlikely,
                               .athletics: .unlikely,
                               .mount: .unlikely,
                               .swim: .unlikely,
                               .climb: .unlikely,
                               .hop: .unlikely,
                               .pilot: .unlikely,
                               .intimidate: .unlikely,
                               .persuasion: .prioritized,
                               .trade: .prioritized,
                               .wandering: .prioritized,
                               .etiquette: .prioritized,
                               .warn: .unlikely,
                               .look: .unlikely,
                               .seek: .unlikely,
                               .animals: .prioritized,
                               .medicine: .prioritized,
                               .coldness: .unlikely,
                               .feats_of_strength: .unlikely,
                               .pain_resistance: .unlikely,
                               .locksmith: .unlikely,
                               .disguise: .unlikely,
                               .hide: .unlikely,
                               .heist: .unlikely,
                               .stealth: .unlikely,
                               .trappery: .unlikely,
                               .poisons: .unlikely,
                               .puppets: .average]
        )
    }

    static var Flamboyant: Modifier {
        Modifier(type: .Weight, items: [
            .agility: .prioritized,
            .intelligence: .unlikely,
            .perception: .prioritized,
            .athletics: .prioritized,
            .swim: .prioritized,
            .climb: .prioritized,
            .style: .prioritized,
            .intimidate: .unlikely,
            .leadership: .prioritized,
            .persuasion: .prioritized,
            .trade: .prioritized,
            .etiquette: .prioritized,
            .look: .prioritized,
            .science: .unlikely,
            .coldness: .unlikely,
            .stealth: .unlikely,
            .art: .prioritized,
            .dance: .prioritized,
            .music: .prioritized,
            .hand_tricks: .prioritized,
            .puppets: .average]
        )
    }

    static var Reclusive: Modifier {
        Modifier(type: .Weight, items: [
            .agility: .unlikely,
            .dexterity: .unlikely,
            .intelligence: .prioritized,
            .perception: .prioritized,
            .will_power: .prioritized,
            .attack: .unlikely,
            .parry: .unlikely,
            .dodge: .unlikely,
            .wear_armor: .unlikely,
            .stunts: .unlikely,
            .athletics: .unlikely,
            .mount: .unlikely,
            .swim: .unlikely,
            .climb: .unlikely,
            .hop: .unlikely,
            .pilot: .unlikely,
            .style: .unlikely,
            .intimidate: .unlikely,
            .leadership: .unlikely,
            .wandering: .unlikely,
            .etiquette: .unlikely,
            .warn: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .science: .prioritized,
            .history: .prioritized,
            .memorize: .prioritized,
            .navigation: .prioritized,
            .appraisal: .prioritized,
            .feats_of_strength: .unlikely,
            .locksmith: .unlikely,
            .disguise: .unlikely,
            .hide: .prioritized,
            .heist: .unlikely,
            .stealth: .prioritized,
            .trappery: .unlikely,
            .forging: .unlikely,
            .puppets: .average]
        )
    }

    static var Dominant: Modifier {
        Modifier(type: .Weight, items: [.force: .prioritized,
                               .constitution: .prioritized,
                               .perception: .prioritized,
                               .will_power: .prioritized,
                               .attack: .prioritized,
                               .wear_armor: .prioritized,
                               .athletics: .prioritized,
                               .intimidate: .prioritized,
                               .leadership: .prioritized,
                               .etiquette: .unlikely,
                               .tactic: .prioritized,
                               .navigation: .prioritized,
                               .feats_of_strength: .prioritized,
                               .puppets: .average])
    }

    static var Resilient: Modifier {
        Modifier(type: .Weight, items: [
            .constitution: .prioritized,
            .will_power: .prioritized,
            .medicine: .prioritized,
            .pain_resistance: .prioritized,
            .puppets: .average])}

    // Diplomatic
    static var Diplomatic: Modifier {
        Modifier(type: .Weight, items:
                        [.force: .unlikely,
                         .intelligence: .prioritized,
                         .perception: .prioritized,
                         .will_power: .prioritized,
                         .attack: .unlikely,
                         .style: .prioritized,
                         .intimidate: .unlikely,
                         .leadership: .prioritized,
                         .persuasion: .prioritized,
                         .trade: .prioritized,
                         .etiquette: .prioritized,
                         .look: .prioritized,
                         .law: .prioritized,
                         .history: .prioritized,
                         .coldness: .unlikely,
                         .feats_of_strength: .unlikely,
                         .pain_resistance: .unlikely,
                         .puppets: .average]

        )}
    // Inventive
    static var Inventive: Modifier {
        Modifier(type: .Weight, items:[
            .intelligence: .prioritized,
            .perception: .prioritized,
            .trade: .prioritized,
            .look: .prioritized,
            .seek: .prioritized,
            .science: .prioritized,
            .coldness: .unlikely,
            .art: .prioritized,
            .forging: .prioritized,
            .runes: .prioritized,
            .alchemy: .prioritized,
            .animism: .prioritized,
            .ritual_calligraphy: .prioritized,
            .goldsmithy: .prioritized,
            .confection: .prioritized,
            .puppets: .prioritized]

        )}
    // Resourceful
    static var Resourceful: Modifier {
        Modifier(type: .Weight, items:[
            .intelligence: .prioritized,
            .perception: .prioritized,
            .leadership: .prioritized,
            .trade: .prioritized,
            .warn: .prioritized,
            .tactic: .prioritized,
            .coldness: .unlikely,
            .locksmith: .prioritized,
            .disguise: .prioritized,
            .hide: .prioritized,
            .heist: .prioritized,
            .stealth: .prioritized,
            .trappery: .prioritized,
            .poisons: .prioritized,
            .hand_tricks: .prioritized,
            .puppets: .average]

        )}
    // Studious
    static var Studious: Modifier {
        Modifier(type: .Weight, items:
                        [.force: .unlikely,
                         .intelligence: .prioritized,
                         .perception: .prioritized,
                         .attack: .unlikely,
                         .leadership: .prioritized,
                         .warn: .prioritized,
                         .science: .prioritized,
                         .history: .prioritized,
                         .medicine: .prioritized,
                         .memorize: .prioritized,
                         .navigation: .prioritized,
                         .coldness: .unlikely,
                         .feats_of_strength: .unlikely,
                         .puppets: .average]

        )}
    // Idealistic
    static var Idealistic: Modifier {
        Modifier(type: .Weight, items:
                        [.force: .unlikely,
                         .intelligence: .prioritized,
                         .will_power: .prioritized,
                         .attack: .unlikely,
                         .style: .prioritized,
                         .intimidate: .unlikely,
                         .leadership: .prioritized,
                         .persuasion: .prioritized,
                         .etiquette: .prioritized,
                         .law: .prioritized,
                         .history: .prioritized,
                         .coldness: .unlikely,
                         .feats_of_strength: .unlikely,
                         .art: .prioritized,
                         .puppets: .average]

        )}
    /*static var Resilient: Modifier {
     Modifier(items:

     )}*/
}


/*

 Chat GPT:
 - Le cuesta usar valores como -5, -10, 10, etc. Parece que le es más fácil si son valores que pueda "entender" como "Average"
 - No pude lograr que no devuelva los items que sean "0" o "Average", la primera vez que lo intenté me ignoró y la segunda empezó a cambiar los valores 0 por otros válidos (como 5 o -5)

 THESE MODIFIERS WERE GENERATED ASSISTED BY IA, WITH THE FOLLOWING PROMPT

 You are going to pretend to be Concept2Modifiers or C2M for short. C2M AI takes concepts and turns them into modifiers for a list of skills.

 The full list of skills, categorized are:
 Core skills:
 force
 agility
 dexterity
 intelligence
 constitution
 perception
 will_power
 magic_power
 Primary abilities:
 attack
 parry
 dodge
 wear_armor
 Athletic abilities:
 stunts
 athletics
 mount
 swim
 climb
 hop
 pilot
 Social abilities:
 style
 intimidate
 leadership
 persuasion
 trade
 wandering
 etiquette
 Perceptive abilities:
 warn
 look
 seek
 Intellectual abilities:
 animals
 science
 law
 herbalist
 history
 tactic
 medicine
 memorize
 navigation
 occultism
 appraisal
 magic_valoration
 vigor abilities:
 coldness
 feats_of_strength
 pain_resistance
 Subterfuge abilities:
 locksmith
 disguise
 hide
 heist
 stealth
 trappery
 poisons
 Artistic abilities:
 art
 dance
 forging
 runes
 alchemy
 animism
 music
 hand_tricks
 ritual_calligraphy
 goldsmithy
 confection
 puppets

 Every skill would have a modifier that represents the possibility of selecting it in the creation of the character from the following options:

 unlikely - an item that has a very low chance of being selected.
 average - an item that has an equal chance of being selected as any other item.
 prioritized - an item that has a very high chance of being selected.

 You will ask the user for a concept and then provide a list of the skills and his modifiers for it in a copyable code-box, with the following format:

 "[.force: .prioritized,
 .agility: .unlikely,
 .dexterity: .prioritized,
 .intelligence: .unlikely]"
 */
