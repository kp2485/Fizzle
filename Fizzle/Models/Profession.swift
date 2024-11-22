//
//  Profession.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

/// Represents a character's profession, defining their stat requirements, skill focuses, and spell books.
enum Profession: String, Codable {
    case fighter
    case rogue
    case mage
    case priest
    case psionic
    case alchemist
    case ranger
    case bard
    case ninja
    case monk
    case samurai

    /// Stat requirements for each profession.
    var statRequirements: Stats {
        switch self {
        case .fighter:
            return Stats(strength: 12, intelligence: 0, piety: 0, vitality: 10, dexterity: 8, speed: 8, personality: 0, karma: 0)
        case .rogue:
            return Stats(strength: 8, intelligence: 6, piety: 0, vitality: 8, dexterity: 10, speed: 10, personality: 0, karma: 0)
        case .mage:
            return Stats(strength: 0, intelligence: 12, piety: 0, vitality: 8, dexterity: 6, speed: 6, personality: 0, karma: 0)
        case .priest:
            return Stats(strength: 6, intelligence: 6, piety: 12, vitality: 8, dexterity: 6, speed: 6, personality: 8, karma: 0)
        case .psionic:
            return Stats(strength: 0, intelligence: 10, piety: 10, vitality: 8, dexterity: 6, speed: 6, personality: 8, karma: 0)
        case .alchemist:
            return Stats(strength: 0, intelligence: 10, piety: 8, vitality: 8, dexterity: 8, speed: 6, personality: 0, karma: 0)
        case .ranger:
            return Stats(strength: 10, intelligence: 6, piety: 6, vitality: 8, dexterity: 10, speed: 8, personality: 0, karma: 0)
        case .bard:
            return Stats(strength: 6, intelligence: 6, piety: 6, vitality: 8, dexterity: 10, speed: 8, personality: 10, karma: 0)
        case .ninja:
            return Stats(strength: 12, intelligence: 10, piety: 0, vitality: 8, dexterity: 12, speed: 12, personality: 0, karma: 0)
        case .monk:
            return Stats(strength: 10, intelligence: 8, piety: 10, vitality: 8, dexterity: 10, speed: 10, personality: 0, karma: 0)
        case .samurai:
            return Stats(strength: 12, intelligence: 10, piety: 8, vitality: 10, dexterity: 8, speed: 6, personality: 0, karma: 0)
        }
    }

    /// Skill focuses for each profession.
    var skillFocus: [Skill] {
        let repository = SkillRepository.shared
        switch self {
        case .fighter:
            return repository.getSkills(byType: .weaponry).filter { $0.name != "Wand & Dagger" }
        case .rogue:
            return repository.getSkills(byType: .weaponry).filter { $0.name == "Throw" || $0.name == "Hand & Feet" } +
                   repository.getSkills(byType: .physical).filter { $0.name == "Skulduggery" || $0.name == "Scout" }
        case .mage:
            return repository.getSkills(byType: .academia).filter { $0.name == "Theosophy" || $0.name == "Scribe" }
        case .priest:
            return repository.getSkills(byType: .academia).filter { $0.name == "Thaumaturgy" || $0.name == "Artifacts" }
        case .psionic:
            return repository.getSkills(byType: .academia).filter { $0.name == "Theology" || $0.name == "Mythology" }
        case .alchemist:
            return repository.getSkills(byType: .academia).filter { $0.name == "Alchemy" || $0.name == "Artifacts" }
        case .ranger:
            return repository.getSkills(byType: .weaponry).filter { $0.name == "Bow" || $0.name == "Sword" } +
                   repository.getSkills(byType: .physical).filter { $0.name == "Scout" }
        case .bard:
            return repository.getSkills(byType: .physical).filter { $0.name == "Music" || $0.name == "Oratory" }
        case .ninja:
            return repository.getSkills(byType: .physical).filter { $0.name == "Ninjutsu" || $0.name == "Legerdemain" } +
                   repository.getSkills(byType: .weaponry).filter { $0.name == "Hand & Feet" }
        case .monk:
            return repository.getSkills(byType: .physical).filter { $0.name == "Ninjutsu" || $0.name == "Oratory" }
        case .samurai:
            return repository.getSkills(byType: .weaponry).filter { $0.name == "Sword" || $0.name == "Pole & Staff" }
        }
    }

    /// Spell books associated with each profession.
    var spellBooks: [SpellBook] {
        let repository = SpellRepository.shared
        switch self {
        case .fighter, .rogue:
            return []
        case .ranger:
            return repository.spellBooks.filter { $0.spellClass == .mage }
        case .samurai:
            return repository.spellBooks.filter { $0.spellClass == .mage }
        case .bard:
            return repository.spellBooks.filter { $0.spellClass == .psionic }
        case .monk:
            return repository.spellBooks.filter { $0.spellClass == .priest }
        case .ninja:
            return repository.spellBooks.filter { $0.spellClass == .alchemist }
        case .mage:
            return repository.spellBooks.filter { $0.spellClass == .mage }
        case .priest:
            return repository.spellBooks.filter { $0.spellClass == .priest }
        case .psionic:
            return repository.spellBooks.filter { $0.spellClass == .psionic }
        case .alchemist:
            return repository.spellBooks.filter { $0.spellClass == .alchemist }
        }
    }
}
