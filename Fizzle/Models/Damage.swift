//
//  Damage.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/22/24.
//

import Foundation

struct Damage: Codable {
    var numberOfDice: Int
    var diceSides: Int
    var bonus: Int

    /// Calculates the minimum damage this roll can do.
    var minimumDamage: Int {
        return numberOfDice + bonus
    }

    /// Calculates the maximum damage this roll can do.
    var maximumDamage: Int {
        return (numberOfDice * diceSides) + bonus
    }

    /// Returns a description of the damage range (e.g., "2-10 damage").
    var damageRange: String {
        return "\(minimumDamage)-\(maximumDamage) damage"
    }
}
