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
    var sex: Sex
    var profession: Profession
    
    var stats: Stats
    
    var skills: [Skill: Int]
    var spells: [Spell]
    
    var experience: Int = 0
    var level: Int {
        switch profession {
        case .fighter:
            return getLevel(from: [
                1000, 2000, 4000, 8000, 16000, 32000, 64000, 128000, 256000, 512000,
                768000, 1024000, 1536000, 1792000, 2048000
            ])
        case .thief:
            return getLevel(from: [
                900, 1800, 3600, 7200, 14400, 28800, 57600, 115200, 230400, 460800,
                685800, 911800, 1135800, 1356800, 1558800, 1810800
            ])
        case .mage:
            return getLevel(from: [
                1250, 2500, 5000, 10000, 20000, 40000, 80000, 160000, 320000, 640000,
                1015000, 1395000, 1765000, 2140000, 2515000, 2890000
            ])
        case .priest:
            return getLevel(from: [
                1250, 2500, 5000, 10000, 20000, 40000, 80000, 160000, 320000, 640000,
                1015000, 1395000, 1765000, 2140000, 2515000, 2890000
            ])
        case .psionic:
            return getLevel(from: [
                1250, 2500, 5000, 10000, 20000, 40000, 80000, 160000, 320000, 640000,
                1015000, 1395000, 1765000, 2140000, 2515000, 2890000
            ])
        case .alchemist:
            return getLevel(from: [
                1100, 2200, 4400, 8800, 17600, 35200, 70400, 140800, 281600, 563200,
                875200, 1187200, 1499200, 1811200, 2123200, 2435200
            ])
        case .ranger:
            return getLevel(from: [
                1400, 2800, 5600, 11200, 22400, 44800, 89600, 179200, 358400, 716800,
                1154800, 1546800, 1961800, 2376800, 2791800, 3206800
            ])
        case .bard:
            return getLevel(from: [
                1250, 2500, 5000, 10000, 20000, 40000, 80000, 160000, 320000, 640000,
                1015000, 1395000, 1765000, 2140000, 2515000, 2890000
            ])
        case .ninja:
            return getLevel(from: [
                1500, 3000, 6000, 12000, 24000, 48000, 96000, 192000, 384000, 768000,
                1243000, 1793000, 2268000, 2668000, 3143000, 3618000
            ])
        case .monk:
            return getLevel(from: [
                1400, 2800, 5600, 11200, 22400, 44800, 89600, 179200, 358400, 716800,
                1154800, 1546800, 1961800, 2376800, 2791800, 3206800
            ])
        case .samurai:
            return getLevel(from: [
                1400, 2800, 5600, 11200, 22400, 44800, 89600, 179200, 358400, 716800,
                1154800, 1546800, 1961800, 2376800, 2791800, 3206800
            ])
        case .valkyrie:
            return getLevel(from: [
                1100, 2200, 4400, 8800, 17600, 35200, 70400, 140800, 281600, 563200,
                875200, 1187200, 1499200, 1811200, 2123200, 2435200
            ])
        case .bishop:
            return getLevel(from: [
                1500, 3000, 6000, 12000, 24000, 48000, 96000, 192000, 384000, 768000,
                1213000, 1658000, 2113000, 2548000, 2993000, 3438000
            ])
        case .lord:
            return getLevel(from: [
                1400, 2800, 5600, 11200, 22400, 44800, 89600, 179200, 358400, 716800,
                1154800, 1546800, 1961800, 2376800, 2791800, 3206800
            ])
        }
    }
    
    var maximumHitPoints: Int = 0
    var currentHitPoints: Int = 0
    var carryingCapacity: Int = 0
    
//    var equipment: Equipment
//    var armorClass: Int = 0
//    
//    var inventory: [Item]
//    var currentWeight: Int {
//        
//    }
//    var encumbrance: Int {
//        
//    }
    
    var maladies: [Malady] = []
    
    init(name: String, race: Race, profession: Profession, sex: Sex, stats: Stats) {
        self.name = name
        self.race = race
        self.profession = profession
        self.sex = sex
        self.stats = stats
        self.skills = [:]
        self.spells = []
    }
    
    private func getLevel(from thresholds: [Int]) -> Int {
        for (index, threshold) in thresholds.enumerated() {
            if experience < threshold {
                return index + 1
            }
        }
        return thresholds.count + 1
    }
    
    func assignSkill(skill: Skill, points: Int) {
        skills[skill, default: 0] += points
    }
    
    func learnSpell(_ spell: Spell) {
        spells.append(spell)
    }
}
