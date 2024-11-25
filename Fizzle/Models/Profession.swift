//
//  Profession.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

/// Represents a character's profession, defining their stat requirements, skill focuses, and spell books.
enum Profession: String, Codable, CaseIterable {
    case fighter
    case thief
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
            return Stats(strength: 12, intelligence: 0, piety: 0, vitality: 0, dexterity: 0, speed: 0, personality: 0, karma: 0)
        case .thief:
            return Stats(strength: 0, intelligence: 0, piety: 0, vitality: 0, dexterity: 12, speed: 8, personality: 0, karma: 0)
        case .mage:
            return Stats(strength: 0, intelligence: 12, piety: 0, vitality: 0, dexterity: 0, speed: 0, personality: 0, karma: 0)
        case .priest:
            return Stats(strength: 0, intelligence: 0, piety: 12, vitality: 0, dexterity: 0, speed: 0, personality: 8, karma: 0)
        case .psionic:
            return Stats(strength: 10, intelligence: 14, piety: 0, vitality: 14, dexterity: 0, speed: 0, personality: 10, karma: 0)
        case .alchemist:
            return Stats(strength: 0, intelligence: 13, piety: 0, vitality: 0, dexterity: 13, speed: 0, personality: 0, karma: 0)
        case .ranger:
            return Stats(strength: 10, intelligence: 8, piety: 8, vitality: 11, dexterity: 10, speed: 8, personality: 8, karma: 0)
        case .bard:
            return Stats(strength: 0, intelligence: 10, piety: 0, vitality: 0, dexterity: 12, speed: 8, personality: 12, karma: 0)
        case .ninja:
            return Stats(strength: 12, intelligence: 10, piety: 10, vitality: 12, dexterity: 12, speed: 12, personality: 0, karma: 0)
        case .monk:
            return Stats(strength: 13, intelligence: 8, piety: 13, vitality: 0, dexterity: 10, speed: 13, personality: 8, karma: 0)
        case .samurai:
            return Stats(strength: 12, intelligence: 11, piety: 0, vitality: 9, dexterity: 12, speed: 14, personality: 8, karma: 0)
        case .valkyrie:
            return Stats(strength: 10, intelligence: 0, piety: 11, vitality: 11, dexterity: 10, speed: 11, personality: 8, karma: 0)
        case .bishop:
            return Stats(strength: 0, intelligence: 15, piety: 15, vitality: 0, dexterity: 0, speed: 0, personality: 8, karma: 0)
        case .lord:
            return Stats(strength: 12, intelligence: 9, piety: 12, vitality: 12, dexterity: 9, speed: 9, personality: 14, karma: 0)
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
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout",
                "Artifacts", "Mythology", "Scribe"
            ])
        case .thief:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout", "Oratory", "Skulduggery", "Legerdemain", "Ninjutsu",
                "Artifacts", "Mythology", "Scribe"
            ])
        case .mage:
            return getSkillsFromNames([
                "Wand & Dagger", "Pole & Staff", "Throw", "Sling", "Bow",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Thaumaturgy"
            ])
        case .priest:
            return getSkillsFromNames([
                "Mace & Flail", "Pole & Staff", "Sling", "Shield",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Theology"
            ])
        case .psionic:
            return getSkillsFromNames([
                "Wand & Dagger", "Mace & Flail", "Pole & Staff", "Throw", "Sling",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Theosophy"
            ])
        case .alchemist:
            return getSkillsFromNames([
                "Wand & Dagger", "Mace & Flail", "Pole & Staff", "Throw",
                "Scout",
                "Artifacts", "Mythology", "Scribe", "Alchemy"
            ])
        case .ranger:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout",
                "Artifacts", "Mythology", "Scribe", "Alchemy"
            ])
        case .bard:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout", "Music", "Oratory", "Legerdemain", "Skulduggery",
                "Artifacts", "Mythology", "Scribe", "Thaumaturgy"
            ])
        case .ninja:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Hand & Feet",
                "Scout", "Legerdemain", "Skulduggery", "Ninjutsu",
                "Artifacts", "Mythology", "Scribe", "Alchemy", "Kirijutsu"
            ])
        case .monk:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Hand & Feet",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Theosophy", "Kirijutsu"
            ])
        case .samurai:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Thaumaturgy", "Kirijutsu"
            ])
        case .valkyrie:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Theology"
            ])
        case .bishop:
            return getSkillsFromNames([
                "Mace & Flail", "Pole & Staff", "Sling", "Shield",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Thaumaturgy", "Theology"
            ])
        case .lord:
            return getSkillsFromNames([
                "Wand & Dagger", "Sword", "Axe", "Mace & Flail", "Pole & Staff", "Shield", "Throw", "Sling", "Bow", "Shield",
                "Scout", "Oratory",
                "Artifacts", "Mythology", "Scribe", "Theology"
            ])
        }
    }
    
    var prelearnedSkills: [String] {
        switch self {
        case .fighter:
            return []
        case .thief:
            return ["Skulduggery"]
        case .mage:
            return ["Thaumaturgy"]
        case .priest:
            return ["Theology"]
        case .psionic:
            return ["Theosophy"]
        case .alchemist:
            return ["Alchemy"]
        case .ranger:
            return ["Scout"]
        case .bard:
            return ["Music"]
        case .ninja:
            return ["Hand & Feet", "Ninjutsu"]
        case .monk:
            return ["Hand & Feet", "Theosophy"]
        case .samurai:
            return ["Sword"]
        case .valkyrie:
            return ["Sword"]
        case .bishop:
            return ["Theology", "Thaumaturgy"]
        case .lord:
            return ["Sword"]
        }
    }
    
    /// Spell books associated with each profession.
    var spellBooks: [SpellBook] {
        let repository = SpellRepository.shared
        switch self {
        case .fighter, .thief:
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
