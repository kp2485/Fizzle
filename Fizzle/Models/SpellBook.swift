//
//  SpellBook.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

struct SpellBook: Codable {
    let spellClass: SpellBookClass
    let spells: [Spell]
}

enum SpellBookClass: String, Codable {
    case alchemist = "Alchemist"
    case mage = "Mage"
    case priest = "Priest"
    case psionic = "Psionic"
}
