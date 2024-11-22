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
    
    /// Provides a long description for each stat.
    static func longDescription(for stat: String) -> String {
        switch stat.lowercased() {
        case "strength":
            return "Affects any maneuver which requires physical strength. Everything from hurting an opponent to forcing a door off its hinges requires Strength. Strength also affects a character's carrying capacity and stamina."
        case "intelligence":
            return "Affects ability to cast and learn spells, determine traps on treasure chests and any other task which requires mental mettle. Intelligence also affects a character's ability to learn new skills."
        case "piety":
            return "Is a character's overall devotion to a subject or a field of study, and affects the ability to develop skills and to learn new spells. Piety also affects the amount of spell power a character gets when he or she gains levels, and further affects how quickly the spell power is recouped. Sometimes, in spite of a low Intelligence, an extremely devoted and persevering character can learn subjects just as quickly as his or her whip-smart friends."
        case "vitality":
            return "Is a character's life force, and affects the amount of hit points and stamina a character achieves. Vitality also affects the ability to heal and be resurrected, and helps to provide the character resistance to poison, paralysis and death in general. If a character's Vitality reaches zero, he or she cannot be resurrected."
        case "dexterity":
            return "The ability to dodge a missile, pop a trap on a treasure chest and avoid a lance. Overall, it is the ability of a character to move his or her body, hands and feet included, in response to any situation. Since Dexterity is so important to movement, it is directly related to the character's natural armor class (the ability to dodge a monster's hit). In combat, Dexterity affects the amount of times a character can hit a monster within a single attack."
        case "speed":
            return "Is the amount of time a character needs to do any given action. The higher the Speed, the faster the character moves or is able to accomplish a task. In combat, this statistic determines how many times a character can attack a monster in one round. Because Speed is also important to movement, like Dexterity, it directly affects the character's natural armor class."
        case "personality":
            return "Is the overall friendliness of a character, and affects the way a character interacts with NPCs in the dungeon. Characters with high Personality tend to be extroverted and charismatic. Low Personality characters, on the other hand, are more introverted and shy."
        case "karma":
            return "Affects everything your character does and acts as a sort of ethical meter. While its effects are somewhat mysterious, characters with high Karma are generally happy-go-lucky individuals. Characters with low Karma tend to be less lucky in life, and have an inclination toward lesser dealings."
        default:
            return "Unknown stat."
        }
    }
}

