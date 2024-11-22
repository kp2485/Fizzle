//
//  Race.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

/// Enum representing the available races in the game.
enum Race: String, CaseIterable {
    case human, elf, dwarf, gnome, hobbit, lizardman, dracon, felpurr, rawulf, faerie, mook
    
    /// Initial stats for the race.
    var initialStats: Stats {
        switch self {
        case .human:
            return Stats(strength: 9, intelligence: 8, piety: 8, vitality: 9, dexterity: 9, speed: 8, personality: 8, karma: 0)
        case .elf:
            return Stats(strength: 7, intelligence: 10, piety: 10, vitality: 7, dexterity: 9, speed: 9, personality: 8, karma: 0)
        case .dwarf:
            return Stats(strength: 11, intelligence: 6, piety: 10, vitality: 12, dexterity: 7, speed: 7, personality: 7, karma: 0)
        case .gnome:
            return Stats(strength: 10, intelligence: 7, piety: 13, vitality: 10, dexterity: 8, speed: 6, personality: 6, karma: 0)
        case .hobbit:
            return Stats(strength: 8, intelligence: 7, piety: 6, vitality: 9, dexterity: 10, speed: 7, personality: 13, karma: 0)
        case .lizardman:
            return Stats(strength: 12, intelligence: 5, piety: 5, vitality: 14, dexterity: 8, speed: 10, personality: 3, karma: 0)
        case .dracon:
            return Stats(strength: 10, intelligence: 7, piety: 6, vitality: 12, dexterity: 10, speed: 8, personality: 6, karma: 0)
        case .felpurr:
            return Stats(strength: 7, intelligence: 10, piety: 7, vitality: 7, dexterity: 10, speed: 12, personality: 10, karma: 0)
        case .rawulf:
            return Stats(strength: 8, intelligence: 6, piety: 12, vitality: 10, dexterity: 8, speed: 8, personality: 10, karma: 0)
        case .faerie:
            return Stats(strength: 5, intelligence: 11, piety: 6, vitality: 6, dexterity: 10, speed: 14, personality: 12, karma: 0)
        case .mook:
            return Stats(strength: 10, intelligence: 10, piety: 6, vitality: 10, dexterity: 7, speed: 7, personality: 9, karma: 0)
        }
    }
    
    /// Special abilities and resistances for the race.
    var specialAbilities: [String] {
        switch self {
        case .human:
            return []
        case .elf:
            return ["Resistance to Hypnosis and Sleep Spells"]
        case .dwarf:
            return ["Resistance to Magic and Poison"]
        case .gnome:
            return ["Resistance to Magic and Poison"]
        case .hobbit:
            return ["Resistance to Magic"]
        case .lizardman:
            return ["Resistance to Mental Spells and Acid"]
        case .dracon:
            return ["Resistance to Mental Spells and Acid", "Can Breathe Acid"]
        case .felpurr:
            return ["Resistance to Spells and Missiles"]
        case .rawulf:
            return ["Resistance to Cold"]
        case .faerie:
            return ["Resistance to Magic"]
        case .mook:
            return ["Resistance to Magic and Cold"]
        }
    }
    
    /// Description of the race, summarizing key traits.
    var shortDescription: String {
        switch self {
        case .human:
            return "Humans are perfectly balanced and can adapt to any profession."
        case .elf:
            return "Elves are intelligent and pious, excelling in magic-related professions."
        case .dwarf:
            return "Dwarves are strong and resilient, making excellent fighters or priests."
        case .gnome:
            return "Gnomes are intelligent and pious, well-suited for magical and academic roles."
        case .hobbit:
            return "Hobbits are dexterous and speedy, excelling as thieves or rangers."
        case .lizardman:
            return "Lizardmen are powerful fighters with great stamina and resistance to mental spells."
        case .dracon:
            return "Dracons are strong and resilient, with the ability to breathe acid on enemies."
        case .felpurr:
            return "Felpurrs are swift and agile, ideal for stealthy or combat roles like ninjas."
        case .rawulf:
            return "Rawulfs are faithful and resilient, excelling as priests or paladins."
        case .faerie:
            return "Faeries are swift and magical, excelling as spellcasters with high resistance to magic."
        case .mook:
            return "Mooks are strong and resilient, versatile in many professions."
        }
    }
    
    var longDescription: String {
        switch self {
        case .human:
            return "Humans are the most adaptable and versatile of all races. Though not excelling in any one particular area, humans are competent in nearly every class and profession. Their balanced nature makes them a popular choice for many adventurers."
        case .elf:
            return "Elves are graceful and intelligent, often pursuing careers in magic or other intellectual disciplines. Their long lifespans grant them the wisdom of the ages, but their physical resilience and strength are less pronounced compared to other races."
        case .dwarf:
            return "Dwarves are a hardy and robust race, excelling in professions that require strength and endurance. Known for their skill in crafting and combat, dwarves are fiercely loyal and have a natural affinity for melee combat and defensive strategies."
        case .gnome:
            return "Gnomes are curious and inventive by nature, often drawn to the arts of alchemy and engineering. Their small stature belies their keen intelligence and creativity, making them invaluable in professions requiring wit and dexterity."
        case .hobbit:
            return "Hobbits are a diminutive race known for their stealth and agility. Preferring peaceful lives, they are nonetheless adept at professions that involve sneaking, scouting, and handling ranged weapons. Their resourcefulness makes them surprising assets to any party."
        case .faerie:
            return "Fairies are a mystical and delicate race, deeply connected to the magic of the natural world. Their diminutive size and ethereal qualities make them ill-suited for physical combat, but their magical prowess is unmatched."
        case .lizardman:
            return "Lizardmen are strong and resilient, their reptilian nature granting them superior physical traits and natural armor. They excel in professions that demand brute strength and endurance but lack the finesse and intellect of other races."
        case .dracon:
            return "Dracons are a proud and powerful race, descended from dragons. Their innate strength and resilience make them excellent fighters, while their mystical heritage allows for some proficiency in magic. They command respect and fear wherever they go."
        case .felpurr:
            return "Felpurrs are a feline race known for their agility and keen senses. Their dexterity and quick reflexes make them exceptional in roles requiring speed and precision, such as rogues and rangers. They are graceful and independent, with a strong sense of curiosity."
        case .rawulf:
            return "Rawulfs are a canine race known for their loyalty and spiritual nature. Their natural affinity for healing and devotion makes them excellent priests or other supportive roles. Rawulfs are noble and trustworthy, often serving as protectors of the weak."
        case .mook:
            return "Mooks are a mysterious and towering race of alien origin. Their immense strength and resilience make them ideal for roles in combat, while their intelligence allows them to dabble in magic. Despite their imposing appearance, Mooks are often gentle and wise."
        }
    }
}
