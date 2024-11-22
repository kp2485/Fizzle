//
//  SpellEffect.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

enum SpellEffect: String, Codable, Hashable {
    case damage
    case heal
    case buff
    case debuff
    case utility
    case summon
    case randomEffect
}
