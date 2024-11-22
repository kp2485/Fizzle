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
    
    /// Stat modifiers for the race.
    var statModifiers: Stats {
        switch self {
        case .human:
            return Stats(strength: 0, intelligence: 0, piety: 0, vitality: 0, dexterity: 0, speed: 0, personality: 0, karma: 0)
        case .elf:
            return Stats(strength: -1, intelligence: 2, piety: 1, vitality: -1, dexterity: 0, speed: 1, personality: 0, karma: 0)
        case .dwarf:
            return Stats(strength: 2, intelligence: -1, piety: 1, vitality: 2, dexterity: -2, speed: -1, personality: 0, karma: 0)
        case .gnome:
            return Stats(strength: -1, intelligence: 1, piety: 2, vitality: 0, dexterity: 0, speed: -1, personality: 0, karma: 0)
        case .hobbit:
            return Stats(strength: -2, intelligence: 1, piety: 1, vitality: 0, dexterity: 2, speed: 1, personality: 0, karma: 0)
        case .lizardman:
            return Stats(strength: 3, intelligence: -2, piety: -1, vitality: 3, dexterity: 0, speed: -2, personality: 0, karma: 0)
        case .dracon:
            return Stats(strength: 2, intelligence: 1, piety: 0, vitality: 2, dexterity: -1, speed: -1, personality: 0, karma: 0)
        case .felpurr:
            return Stats(strength: 0, intelligence: 0, piety: -1, vitality: 0, dexterity: 2, speed: 2, personality: 0, karma: 0)
        case .rawulf:
            return Stats(strength: 1, intelligence: -1, piety: 2, vitality: 1, dexterity: 0, speed: -1, personality: 1, karma: 1)
        case .faerie:
            return Stats(strength: -3, intelligence: 2, piety: 2, vitality: -3, dexterity: 2, speed: 3, personality: 0, karma: 0)
        case .mook:
            return Stats(strength: 2, intelligence: 0, piety: 0, vitality: 1, dexterity: 0, speed: 0, personality: 0, karma: 0)
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
