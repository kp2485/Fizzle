//
//  Race.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

/// Enum representing the available races in the game.
enum Race: String, CaseIterable {
    case human, elf, dwarf, gnome, hobbit, lizardman, dracon, felpurr, rawulf, faerie, mook
    
    /// Initial stats for the race.
    var initialStats: Stats {
        switch self {
        case .human:
            return Stats(strength: 9, intelligence: 8, piety: 8, vitality: 9, dexterity: 9, speed: 8, personality: 8, karma: 0)
        case .elf:
            return Stats(strength: 7, intelligence: 10, piety: 10, vitality: 7, dexterity: 9, speed: 9, personality: 8, karma: 0)
        case .dwarf:
            return Stats(strength: 11, intelligence: 6, piety: 10, vitality: 12, dexterity: 7, speed: 7, personality: 7, karma: 0)
        case .gnome:
            return Stats(strength: 10, intelligence: 7, piety: 13, vitality: 10, dexterity: 8, speed: 6, personality: 6, karma: 0)
        case .hobbit:
            return Stats(strength: 8, intelligence: 7, piety: 6, vitality: 9, dexterity: 10, speed: 7, personality: 13, karma: 0)
        case .lizardman:
            return Stats(strength: 12, intelligence: 5, piety: 5, vitality: 14, dexterity: 8, speed: 10, personality: 3, karma: 0)
        case .dracon:
            return Stats(strength: 10, intelligence: 7, piety: 6, vitality: 12, dexterity: 10, speed: 8, personality: 6, karma: 0)
        case .felpurr:
            return Stats(strength: 7, intelligence: 10, piety: 7, vitality: 7, dexterity: 10, speed: 12, personality: 10, karma: 0)
        case .rawulf:
            return Stats(strength: 8, intelligence: 6, piety: 12, vitality: 10, dexterity: 8, speed: 8, personality: 10, karma: 0)
        case .faerie:
            return Stats(strength: -3, intelligence: 2, piety: 2, vitality: -3, dexterity: 2, speed: 3, personality: 0, karma: 0)
        case .mook:
            return Stats(strength: 10, intelligence: 10, piety: 6, vitality: 10, dexterity: 7, speed: 7, personality: 9, karma: 0)
        }
    }
    
    /// Special abilities and resistances for the race.
    var specialAbilities: [String] {
        switch self {
        case .human:
            return []
        case .elf:
            return ["Resistance to Hypnosis and Sleep Spells"]
        case .dwarf:
            return ["Resistance to Magic and Poison"]
        case .gnome:
            return ["Resistance to Magic and Poison"]
        case .hobbit:
            return ["Resistance to Magic"]
        case .lizardman:
            return ["Resistance to Mental Spells and Acid"]
        case .dracon:
            return ["Resistance to Mental Spells and Acid", "Can Breathe Acid"]
        case .felpurr:
            return ["Resistance to Spells and Missiles"]
        case .rawulf:
            return ["Resistance to Cold"]
        case .faerie:
            return ["Resistance to Magic"]
        case .mook:
            return ["Resistance to Magic and Cold"]
        }
    }
    
    /// Description of the race, summarizing key traits.
    var description: String {
        switch self {
        case .human:
            return "Humans are perfectly balanced and can adapt to any profession."
        case .elf:
            return "Elves are intelligent and pious, excelling in magic-related professions."
        case .dwarf:
            return "Dwarves are strong and resilient, making excellent fighters or priests."
        case .gnome:
            return "Gnomes are intelligent and pious, well-suited for magical and academic roles."
        case .hobbit:
            return "Hobbits are dexterous and speedy, excelling as thieves or rangers."
        case .lizardman:
            return "Lizardmen are powerful fighters with great stamina and resistance to mental spells."
        case .dracon:
            return "Dracons are strong and resilient, with the ability to breathe acid on enemies."
        case .felpurr:
            return "Felpurrs are swift and agile, ideal for stealthy or combat roles like ninjas."
        case .rawulf:
            return "Rawulfs are faithful and resilient, excelling as priests or paladins."
        case .faerie:
            return "Faeries are swift and magical, excelling as spellcasters with high resistance to magic."
        case .mook:
            return "Mooks are strong and resilient, versatile in many professions."
        }
    }
}
