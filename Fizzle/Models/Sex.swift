//
//  Sex.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

/// Represents the two sexes and their associated attribute bonuses.
enum Sex: String, Codable {
    case male
    case female

    /// Attribute bonuses based on sex.
    var attributeBonuses: Stats {
        switch self {
        case .male:
            return Stats(
                strength: 2,
                intelligence: 0,
                piety: 0,
                vitality: 0,
                dexterity: 0,
                speed: 0,
                personality: 0,
                karma: 0
            )
        case .female:
            return Stats(
                strength: 0,
                intelligence: 0,
                piety: 0,
                vitality: 0,
                dexterity: 0,
                speed: 0,
                personality: 1,
                karma: 1
            )
        }
    }
}

