//
//  Stats.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

struct Stats {
    var strength: Int
    var intelligence: Int
    var piety: Int
    var vitality: Int
    var dexterity: Int
    var speed: Int
    var personality: Int
    var karma: Int
    
    func meetsRequirements(for profession: Profession) -> Bool {
        let requirements = profession.statRequirements
        return strength >= requirements.strength &&
               intelligence >= requirements.intelligence &&
               piety >= requirements.piety &&
               vitality >= requirements.vitality &&
               dexterity >= requirements.dexterity &&
               speed >= requirements.speed &&
               personality >= requirements.personality &&
               karma >= requirements.karma
    }
    
    /// Returns a new `Stats` instance with bonuses from another `Stats` instance.
    func applyingBonuses(from bonuses: Stats) -> Stats {
        return Stats(
            strength: strength + bonuses.strength,
            intelligence: intelligence + bonuses.intelligence,
            piety: piety + bonuses.piety,
            vitality: vitality + bonuses.vitality,
            dexterity: dexterity + bonuses.dexterity,
            speed: speed + bonuses.speed,
            personality: personality + bonuses.personality,
            karma: karma + bonuses.karma
        )
    }
}

