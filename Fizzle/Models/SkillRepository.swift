//
//  SkillRepository.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

class SkillRepository {
    static let shared = SkillRepository()
    
    private(set) var skills: [Skill] = []
    
    private init() {
        skills = [
            // Weaponry Skills
            Skill(
                name: "Axe",
                type: .weaponry,
                description: "This ability allows battle or hand axes to be used effectively in combat."
            ),
            Skill(
                name: "Bow",
                type: .weaponry,
                description: "The handling of a bow, and firing arrows, requires grace and skill provided by this ability."
            ),
            Skill(
                name: "Hand & Feet",
                type: .weaponry,
                description: "The talent of using hands and feet to deal damage to an opponent."
            ),
            Skill(
                name: "Mace & Flail",
                type: .weaponry,
                description: "Mace-like items, including flails and hammers, require the use of this skill."
            ),
            Skill(
                name: "Pole & Staff",
                type: .weaponry,
                description: "Mastery in this skill allows the use of weapons such as halberds, bo and staves."
            ),
            Skill(
                name: "Shield",
                type: .weaponry,
                description: "The practical ability to block an opponent's strikes by employing a shield requires practice and experience."
            ),
            Skill(
                name: "Sling",
                type: .weaponry,
                description: "The art of pulling the elastic cord to hurl bullets of various materials takes practice and ability."
            ),
            Skill(
                name: "Sword",
                type: .weaponry,
                description: "Any blade, including katanas, is skillfully utilized with practice in this ability."
            ),
            Skill(
                name: "Throw",
                type: .weaponry,
                description: "The precision of throwing weapons, including shurikens, darts, and potions, is governed by this skill."
            ),
            Skill(
                name: "Wand & Dagger",
                type: .weaponry,
                description: "The talent of brandishing small weapons, such as wands and daggers, is controlled by this one training path."
            ),
            
            // Physical Skills
            Skill(
                name: "Legerdemain",
                type: .physical,
                description: "Pickpocketing items from an NPC requires skill in Legerdemain to be successful, and significantly more practice to be effective."
            ),
            Skill(
                name: "Music",
                type: .physical,
                description: "This ability allows a character to play instruments. A minimum of one point is needed to play, but experienced musicians will play with more power."
            ),
            Skill(
                name: "Ninjutsu",
                type: .physical,
                description: "This legendary skill has been passed down for generations, allowing skilled rogues to hide in plain sight. It also improves the Armor Class for Ninjas and Monks."
            ),
            Skill(
                name: "Oratory",
                type: .physical,
                description: "This vocal exercise allows spellcasters to precisely annunciate their spells. Magic casters with a high Oratory will successfully cast more spells."
            ),
            Skill(
                name: "Scout",
                type: .physical,
                description: "Trained Scouts gain the ability to spot hidden objects and entrances with little effort."
            ),
            Skill(
                name: "Skulduggery",
                type: .physical,
                description: "The art of lockpicking and disarming traps takes years of practice and skill to achieve. Some locks will only be pickable by true masters."
            ),
            
            // Academia Skills
            Skill(
                name: "Alchemy",
                type: .academia,
                description: "The capability to learn and combine alchemical ingredients to use in spells."
            ),
            Skill(
                name: "Artifacts",
                type: .academia,
                description: "This skill is required to use the abilities of enchanted items and weapons successfully."
            ),
            Skill(
                name: "Kirijutsu",
                type: .academia,
                description: "This deadly ability provides the knowledge of where to strike to kill with a single hit."
            ),
            Skill(
                name: "Mythology",
                type: .academia,
                description: "Characters trained in this vocation can recognize the names of their adversaries."
            ),
            Skill(
                name: "Scribe",
                type: .academia,
                description: "This skill allows the character to read incantations from scrolls properly."
            ),
            Skill(
                name: "Thaumaturgy",
                type: .academia,
                description: "The divine training that grants priest spells in both the light and dark schools."
            ),
            Skill(
                name: "Theology",
                type: .academia,
                description: "Theosophy represents the mental and spiritual discipline that imparts psionic spells on the possessor."
            ),
            Skill(
                name: "Theosophy",
                type: .academia,
                description: "The arcane knowledge sought by mages and wizards, allowing them to cast a wide range of spells."
            )
        ]
    }
}
