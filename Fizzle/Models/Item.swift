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
    var spellAndPower: [String: Int]?
    var allowedProfessions: [Profession]
    var allowedRaces: [Race]
    var allowedSexes: [Sex]
    var weaponHand: PrimaryOrSecondary?
    var isTwoHanded: Bool?
    var range: WeaponRange
    var fightingModes: [FightingMode] // Modes of attack (e.g., "Swing", "Shoot", etc.)
    var powers: [ItemPower] // Special effects, such as "Sleep", "Poison", etc.
}

enum PrimaryOrSecondary: String, Codable {
    case primary
    case secondary
}

