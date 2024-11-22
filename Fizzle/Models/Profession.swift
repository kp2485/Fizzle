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
    case valkyrie
    case bishop
    case lord

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
                return Stats(strength: 0, intelligence: 13, piety: 0, vitality: 8, dexterity: 13, speed: 6, personality: 0, karma: 0)
            case .ranger:
                return Stats(strength: 10, intelligence: 8, piety: 8, vitality: 10, dexterity: 10, speed: 8, personality: 0, karma: 0)
            case .bard:
                return Stats(strength: 6, intelligence: 10, piety: 0, vitality: 8, dexterity: 12, speed: 8, personality: 12, karma: 0)
            case .ninja:
                return Stats(strength: 12, intelligence: 10, piety: 0, vitality: 8, dexterity: 12, speed: 12, personality: 0, karma: 0)
            case .monk:
                return Stats(strength: 13, intelligence: 8, piety: 10, vitality: 8, dexterity: 10, speed: 13, personality: 0, karma: 0)
            case .samurai:
                return Stats(strength: 12, intelligence: 11, piety: 8, vitality: 9, dexterity: 12, speed: 14, personality: 8, karma: 0)
            case .valkyrie:
                return Stats(strength: 10, intelligence: 0, piety: 11, vitality: 11, dexterity: 10, speed: 10, personality: 8, karma: 0)
            case .bishop:
                return Stats(strength: 0, intelligence: 15, piety: 15, vitality: 8, dexterity: 8, speed: 8, personality: 0, karma: 0)
            case .lord:
                return Stats(strength: 12, intelligence: 9, piety: 12, vitality: 12, dexterity: 9, speed: 8, personality: 14, karma: 0)
            }
        }
    
    var sexRequirements: Sex? {
        switch self {
        case .valkyrie:
            return .female
        default:
            return nil
        }
    }

    /// Skill focuses for each profession.
    var skills: [Skill] {
            switch self {
            case .fighter:
                return getSkillsFromNames([
                    "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Bow", "Hand & Feet",
                    "Scout", "Artifacts", "Mythology", "Scribe"
                ])
            case .rogue:
                return getSkillsFromNames([
                    "Throw", "Hand & Feet", "Skulduggery", "Scout", "Legerdemain", "Ninjutsu"
                ])
            case .mage:
                return getSkillsFromNames([
                    "Wand & Dagger", "Pole & Staff", "Throw", "Bow",
                    "Artifacts", "Mythology", "Scribe", "Thaumaturgy"
                ])
            case .priest:
                return getSkillsFromNames([
                    "Mace & Flail", "Pole & Staff", "Sling", "Shield",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe", "Theology"
                ])
            case .psionic:
                return getSkillsFromNames([
                    "Wand & Dagger", "Pole & Staff", "Throw", "Sling",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe", "Theosophy"
                ])
            case .alchemist:
                return getSkillsFromNames([
                    "Wand & Dagger", "Mace & Flail", "Pole & Staff", "Throw",
                    "Artifacts", "Mythology", "Scribe", "Alchemy"
                ])
            case .ranger:
                return getSkillsFromNames([
                    "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Bow",
                    "Scout", "Artifacts", "Mythology", "Scribe", "Alchemy"
                ])
            case .bard:
                return getSkillsFromNames([
                    "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Throw", "Sling",
                    "Scout", "Music", "Oratory", "Legerdemain", "Skulduggery",
                    "Artifacts", "Mythology", "Scribe", "Thaumaturgy"
                ])
            case .ninja:
                return getSkillsFromNames([
                    "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff",
                    "Throw", "Sling", "Bow", "Hand & Feet",
                    "Scout", "Legerdemain", "Skulduggery", "Ninjutsu",
                    "Artifacts", "Mythology", "Scribe", "Alchemy", "Kirijutsu"
                ])
            case .monk:
                return getSkillsFromNames([
                    "Hand & Feet", "Throw", "Sling", "Bow",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe",
                    "Theosophy", "Kirijutsu"
                ])
            case .samurai:
                return getSkillsFromNames([
                    "Sword", "Pole & Staff", "Throw",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe", "Thaumaturgy", "Kirijutsu"
                ])
            case .valkyrie:
                return getSkillsFromNames([
                    "Sword", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Bow",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe", "Theology"
                ])
            case .bishop:
                return getSkillsFromNames([
                    "Mace & Flail", "Pole & Staff", "Sling", "Shield",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe",
                    "Thaumaturgy", "Theology"
                ])
            case .lord:
                return getSkillsFromNames([
                    "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow",
                    "Scout", "Oratory", "Artifacts", "Mythology", "Scribe", "Theology"
                ])
            }
        }

    /// Spell books associated with each profession.
    var spellBooks: [SpellBook] {
        let repository = SpellRepository.shared
        switch self {
        case .fighter, .rogue:
            return []
        case .ranger:
            return repository.spellBooks.filter { $0.spellClass == .alchemist }
        case .samurai:
            return repository.spellBooks.filter { $0.spellClass == .mage }
        case .bard:
            return repository.spellBooks.filter { $0.spellClass == .psionic }
        case .monk:
            return repository.spellBooks.filter { $0.spellClass == .psionic }
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
        case .bishop:
            return repository.spellBooks.filter { $0.spellClass == .priest || $0.spellClass == .mage }
        case .valkyrie:
            return repository.spellBooks.filter { $0.spellClass == .priest }
        case .lord:
            return repository.spellBooks.filter { $0.spellClass == .priest }
        }
    }
    
    private func getSkillsFromNames(_ names: [String]) -> [Skill] {
            let repository = SkillRepository.shared
            return repository.skills.filter { names.contains($0.name) }
        }
}
