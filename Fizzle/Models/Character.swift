//
//  Character.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

class Character {
    var name: String
    var race: Race
    var profession: Profession
    var sex: Sex
    var stats: Stats
    
    var skills: [Skill: Int]
    var spells: [Spell]
    
    var maximumHitPoints: Int = 0
    var currentHitPoints: Int = 0
    var armorClass: Int = 0
    var carryingCapacity: Int = 0
    
    init(name: String, race: Race, profession: Profession, sex: Sex, stats: Stats) {
        self.name = name
        self.race = race
        self.profession = profession
        self.sex = sex
        self.stats = stats
        self.skills = [:]
        self.spells = []
    }
    
    func assignSkill(skill: Skill, points: Int) {
        skills[skill, default: 0] += points
    }
    
    func learnSpell(_ spell: Spell) {
        spells.append(spell)
    }
}
