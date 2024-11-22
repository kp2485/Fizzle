//
//  Item.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/22/24.
//

struct Item: Codable {
    var name: String
    var type: ItemType
    var weight: Double
    var cost: Int
    var toHitBonus: Int?
    var damage: Damage?
    var armorClass: Int?
    var spellAndPower: [Spell: Int]?
    var allowedProfessions: [Profession]
    var allowedRaces: [Race]
    var allowedSexes: [Sex]
    var isTwoHanded: Bool?
    var range: WeaponRange?
    var fightingModes: [FightingMode] // Modes of attack (e.g., "Swing", "Shoot", etc.)
    var powers: [ItemPower] // Special effects, such as "Sleep", "Poison", etc.
}

enum WeaponRange: String, Codable {
    case melee = "Melee"
    case short = "Short"
    case medium = "Medium"
    case long = "Long"
}

enum FightingMode: String, Codable {
    case swing = "Swing"
    case thrust = "Thrust"
    case shoot = "Shoot"
    case thrown = "Throw"
    case punch = "Punch"
    case kick = "Kick"
    case lash = "Lash"
}

enum ItemPower: String, Codable {
    case sleep = "Sleep"
    case poison = "Poison"
    case paralysis = "Paralysis"
    case stone = "Stone"
    case critical = "Critical"
    case knockOut = "Knock Out"
}

