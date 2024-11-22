//
//  Spell.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

struct Spell: Codable, Identifiable, Hashable {
    static func == (lhs: Spell, rhs: Spell) -> Bool {
        lhs.id == rhs.id
    }
    
    let id: UUID
    let name: String
    let realm: SpellRealm
    let level: Int
    let numberOfDice: Int? // Damage dice
    let diceSides: Int?    // Damage dice sides
    let manaCost: Int
    let effect: SpellEffect
    let target: SpellTarget
    let description: String

    init(
        name: String,
        realm: SpellRealm,
        level: Int,
        numberOfDice: Int? = nil,
        diceSides: Int? = nil,
        manaCost: Int,
        effect: SpellEffect,
        target: SpellTarget,
        description: String
    ) {
        self.id = UUID()
        self.name = name
        self.realm = realm
        self.level = level
        self.numberOfDice = numberOfDice
        self.diceSides = diceSides
        self.manaCost = manaCost
        self.effect = effect
        self.target = target
        self.description = description
    }
}
