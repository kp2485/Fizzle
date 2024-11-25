//
//  SpellRepository.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

class SpellRepository {
    static let shared = SpellRepository()
    
    private(set) var spells: [Spell] = []
    private(set) var spellBooks: [SpellBook] = []
    
    private init() {
        // Fire Spells
        spells.append(contentsOf: [
            Spell(
                name: "Energy Blast",
                realm: .fire,
                level: 1,
                numberOfDice: 1,
                diceSides: 7,
                manaCost: 2,
                effect: .damage,
                target: .singleEnemy,
                description: "A jolting spark of electric energy doing 1-7 hit points of damage per power level."
            ),
            Spell(
                name: "Blinding Flash",
                realm: .fire,
                level: 1,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 3,
                effect: .debuff,
                target: .singleEnemy,
                description: "A giant flash of light which may temporarily blind opponents."
            ),
            Spell(
                name: "Fireball",
                realm: .fire,
                level: 3,
                numberOfDice: 2,
                diceSides: 10,
                manaCost: 6,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "Blazing fireballs which burn opponents and can do 2-10 hit points of fire damage per power level."
            ),
            Spell(
                name: "Fire Shield",
                realm: .fire,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .buff,
                target: .group,
                description: "Creates a barrier impervious to fire which protects the party from fire-type spells."
            ),
            Spell(
                name: "Fire Bomb",
                realm: .fire,
                level: 4,
                numberOfDice: 3,
                diceSides: 9,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(4),
                description: "An exploding, incendiary spell which does 3-9 hit points of fire damage per power level."
            ),
            Spell(
                name: "Lightning",
                realm: .fire,
                level: 4,
                numberOfDice: 1,
                diceSides: 10,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "A bolt of electrical energy hurled at the opponents doing 1-10 hit points of electric damage per power level."
            ),
            Spell(
                name: "Prismic Missile",
                realm: .fire,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 9,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "Also known as Dancing Light and Rainbow Rays, the various spectrums have different random effects upon the monsters."
            ),
            Spell(
                name: "Firestorm",
                realm: .fire,
                level: 6,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 12,
                effect: .damage,
                target: .multipleEnemies(nil),
                description: "A sweeping cloud of fire that lasts for several rounds of combat and burns all monsters within it."
            ),
            Spell(
                name: "Nuclear Blast",
                realm: .fire,
                level: 7,
                numberOfDice: 5,
                diceSides: 25,
                manaCost: 16,
                effect: .damage,
                target: .allEnemies,
                description: "A miniature fusion bomb. This spell burns all monsters and does 5-25 hit points of fire damage per power level."
            )
        ])
        
        // Water Spells
        spells.append(contentsOf: [
            Spell(
                name: "Chilling Touch",
                realm: .water,
                level: 1,
                numberOfDice: 1,
                diceSides: 6,
                manaCost: 2,
                effect: .damage,
                target: .singleEnemy,
                description: "A freezing blast of cold which does 1-6 hit points of cold damage per power level."
            ),
            Spell(
                name: "Stamina",
                realm: .water,
                level: 1,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 2,
                effect: .heal,
                target: .singleAlly,
                description: "Replenishes some of the character's stamina. The amount depends on the power level."
            ),
            Spell(
                name: "Terror",
                realm: .water,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 3,
                effect: .debuff,
                target: .group,
                description: "Evokes fear and terror in monsters and may cause them to flee or otherwise reduce their ability to fight against the party."
            ),
            Spell(
                name: "Weaken",
                realm: .water,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "Physically drains the monsters, making them more vulnerable to attack and causing them to fight and react poorly."
            ),
            Spell(
                name: "Slow",
                realm: .water,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "Slows monsters down. They can't move as fast to hit you and are easier to hit themselves."
            ),
            Spell(
                name: "Haste",
                realm: .water,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 5,
                effect: .buff,
                target: .group,
                description: "Speeds up characters' movements by giving them extra energy. Also helpful to counteract a Slow spell."
            ),
            Spell(
                name: "Cure Paralysis",
                realm: .water,
                level: 6,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 6,
                effect: .utility,
                target: .singleAlly,
                description: "Attempts to cure one character of paralysis. Success depends on the strength of paralysis relative to the strength of the spell."
            ),
            Spell(
                name: "Ice Shield",
                realm: .water,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .buff,
                target: .group,
                description: "A barricade that resists the effects of cold and protects the party from cold and cold-type spells. Strength and duration depend on the power level of the spell."
            ),
            Spell(
                name: "Iceball",
                realm: .water,
                level: 4,
                numberOfDice: 3,
                diceSides: 12,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(4),
                description: "A flurry of stinging ice balls which cause 3-12 hit points of ice damage per power level."
            ),
            Spell(
                name: "Paralyze",
                realm: .water,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 5,
                effect: .debuff,
                target: .singleEnemy,
                description: "Attempts to solidify a monster. Duration and success depend on the power level of the spell."
            ),
            Spell(
                name: "Deep Freeze",
                realm: .water,
                level: 6,
                numberOfDice: 3,
                diceSides: 10,
                manaCost: 6,
                effect: .damage,
                target: .singleEnemy,
                description: "Attempts to freeze a monster's bodily fluids solid, doing 3-30 hit points of severe ice damage per power level."
            )
        ])
        
        // Air Spells
        spells.append(contentsOf: [
            Spell(
                name: "Poison",
                realm: .air,
                level: 1,
                numberOfDice: 1,
                diceSides: 5,
                manaCost: 2,
                effect: .damage,
                target: .singleEnemy,
                description: "Turns the air poisonous around the monster, causing 1-5 hit points damage per power level plus poisoning. Strength of poison relative to the power level of the spell."
            ),
            Spell(
                name: "Missile Shield",
                realm: .air,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 5,
                effect: .buff,
                target: .group,
                description: "Protects the party from missiles, arrows, and hurled weapons by hardening the air into a shield."
            ),
            Spell(
                name: "Stink Bomb",
                realm: .air,
                level: 2,
                numberOfDice: 1,
                diceSides: 6,
                manaCost: 4,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "A cloud of stinking fumes that can do 1-6 hit points damage per power level plus nausea."
            ),
            Spell(
                name: "Air Pocket",
                realm: .air,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .buff,
                target: .group,
                description: "Protects the party from air spells such as stinking clouds and suffocation by creating a pocket of clean air. Strength and duration depend on the power level of the spell."
            ),
            Spell(
                name: "Silence",
                realm: .air,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "Causes the air around monsters to stop transmitting sound, thus preventing them from casting spells. Strength and duration depend on the power level."
            ),
            Spell(
                name: "Poison Gas",
                realm: .air,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 7,
                effect: .damage,
                target: .multipleEnemies(nil),
                description: "A poison cloud which lasts several rounds and surrounds the monsters. Monsters inside the cloud suffer from poisoning and damage."
            ),
            Spell(
                name: "Cure Poison",
                realm: .air,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .utility,
                target: .singleAlly,
                description: "Attempts to cure one character of poisoning. Success depends on the strength of poison relative to the strength of the spell."
            ),
            Spell(
                name: "Whirlwind",
                realm: .air,
                level: 4,
                numberOfDice: 1,
                diceSides: 7,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "A swirling tornado whipping around the monsters and blasting them with 1-7 hit points damage per power level."
            ),
            Spell(
                name: "Purify Air",
                realm: .air,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .utility,
                target: .group,
                description: "Attempts to clean the air of any dangerous clouds such as Firestorm and Poison Gas. Success depends on the strength and amount of clouds relative to the spell's strength."
            ),
            Spell(
                name: "Deadly Poison",
                realm: .air,
                level: 6,
                numberOfDice: 3,
                diceSides: 15,
                manaCost: 8,
                effect: .damage,
                target: .singleEnemy,
                description: "Kills a monster outright or does extremely heavy poisoning plus 3-15 damage per power level."
            ),
            Spell(
                name: "Toxic Vapors",
                realm: .air,
                level: 4,
                numberOfDice: 2,
                diceSides: 6,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(nil),
                description: "A giant, sticky cloud of vapors which surrounds the monsters and causes 2-6 hit points damage per power level."
            ),
            Spell(
                name: "Noxious Fumes",
                realm: .air,
                level: 5,
                numberOfDice: 1,
                diceSides: 6,
                manaCost: 10,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "Horrid smelling torrents which blast the monsters' noses and cause 1-6 hit points damage per power level plus nausea."
            ),
            Spell(
                name: "Asphyxiation",
                realm: .air,
                level: 6,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 12,
                effect: .damage,
                target: .group,
                description: "Swallows air around monsters leaving none to breathe. Chance of death depends on strength and susceptibility."
            ),
            Spell(
                name: "Levitate",
                realm: .air,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 12,
                effect: .utility,
                target: .group,
                description: "Holds the party several inches above the floor, preventing falling damage. Duration depends on the power level of the spell."
            ),
            Spell(
                name: "Deadly Air",
                realm: .air,
                level: 7,
                numberOfDice: 4,
                diceSides: 4,
                manaCost: 16,
                effect: .damage,
                target: .allEnemies,
                description: "Makes the air around the monsters entirely unbreathable, causing 4-16 hit points damage per power level."
            )
        ])
        
        // Earth Spells
        spells.append(contentsOf: [
            Spell(
                name: "Acid Splash",
                realm: .earth,
                level: 1,
                numberOfDice: 1,
                diceSides: 7,
                manaCost: 2,
                effect: .damage,
                target: .singleEnemy,
                description: "A rushing wave of bubbling acid which causes 1-7 hit points of damage per power level."
            ),
            Spell(
                name: "Itching Skin",
                realm: .earth,
                level: 1,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 2,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "A sprinkle of powder which causes the monsters' skin to itch. It irritates the monsters and lessens their ability to attack and defend."
            ),
            Spell(
                name: "Armor Shield",
                realm: .earth,
                level: 1,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 2,
                effect: .buff,
                target: .singleAlly,
                description: "Creates a magical shield in front of the party, lowering the AC of party members by one point per power level."
            ),
            Spell(
                name: "Direction",
                realm: .earth,
                level: 2,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 3,
                effect: .utility,
                target: .group,
                description: "Shows the direction the party is facing (N, S, E, W) in the dungeon. The duration of the spell is relative to its power level."
            ),
            Spell(
                name: "Knock-Knock",
                realm: .earth,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 6,
                effect: .utility,
                target: .multipleEnemies(nil),
                description: "Magically alters the lock on a door or chest in an attempt to unlock it. There is a chance it may set off a trap."
            ),
            Spell(
                name: "Blades",
                realm: .earth,
                level: 4,
                numberOfDice: 2,
                diceSides: 8,
                manaCost: 6,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "Hurls slicing razor blades through the air, doing 2-8 hit points damage per power level."
            ),
            Spell(
                name: "Armorplate",
                realm: .earth,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 6,
                effect: .buff,
                target: .group,
                description: "Creates a magic armor plating around the party, protecting them and lowering their armor class."
            ),
            Spell(
                name: "Web",
                realm: .earth,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 7,
                effect: .debuff,
                target: .singleEnemy,
                description: "Attempts to capture a monster in a sticky web. Success depends on the strength of the monster relative to the power level of the spell."
            ),
            Spell(
                name: "Acid Bomb",
                realm: .earth,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(nil),
                description: "A giant acid cloud that surrounds monsters and causes acid damage. The damage depends on the power level of the spell."
            ),
            Spell(
                name: "Armormelt",
                realm: .earth,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .debuff,
                target: .group,
                description: "Softens the armor of monsters and raises their AC in proportion to the power level of the spell. The softened armor is easier to penetrate."
            ),
            Spell(
                name: "Create Life",
                realm: .earth,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .summon,
                target: .group,
                description: "Summons a group of organic monsters to come and fight for the party. The power and number of monsters summoned are relative to the power level."
            ),
            Spell(
                name: "Cure Stone",
                realm: .earth,
                level: 6,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 18,
                effect: .utility,
                target: .singleAlly,
                description: "Attempts to restore a stoned character to normal flesh and bone. Success depends on the strength of the stone relative to the power level of the spell."
            )
        ])
        
        // Mental Spells
        spells.append(contentsOf: [
            Spell(
                name: "Mental Attack",
                realm: .mental,
                level: 1,
                numberOfDice: 1,
                diceSides: 7,
                manaCost: 3,
                effect: .damage,
                target: .singleEnemy,
                description: "An invading pressure of thought swirling the monster's brain and causing 1-7 hit points of mental damage per power level. May cause insanity."
            ),
            Spell(
                name: "Sleep",
                realm: .mental,
                level: 2,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 3,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "Causes monsters to fall asleep and prevents them from attacking the party members and defending themselves from attack. Success depends on the power of the monsters relative to the power level of the spell."
            ),
            Spell(
                name: "Bless",
                realm: .mental,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .buff,
                target: .group,
                description: "Magically lowers the party's AC and enhances their chance to hit a monster relative to the power level of the spell."
            ),
            Spell(
                name: "Charm",
                realm: .mental,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 5,
                effect: .debuff,
                target: .singleEnemy,
                description: "Attempts to charm a monster or NPC, preventing it from attacking the party. In non-combat situations, attempts to charm the NPC to regard the party in a friendly manner."
            ),
            Spell(
                name: "Cure Lesser Condition",
                realm: .mental,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .utility,
                target: .singleAlly,
                description: "Attempts to cure a character of one of the lesser maladies: Afraid, Asleep, Blindness, Nausea, and minor irritations. Success depends on the strength of the malady relative to the strength of the spell."
            ),
            Spell(
                name: "Divine Trap",
                realm: .mental,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .utility,
                target: .selfOnly,
                description: "Permits the caster to determine the letters of a trap on a chest with excellent reliability. Success depends on the power of the trap relative to the power of the spell."
            ),
            Spell(
                name: "Detect Secret",
                realm: .mental,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 5,
                effect: .utility,
                target: .selfOnly,
                description: "Opens the caster's mind to detect anything strange or out of place in the immediate area. The spell reveals secrets with a visual cue. Duration and success depends on the power level of the spell."
            ),
            Spell(
                name: "Identify",
                realm: .mental,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .utility,
                target: .singleEnemy,
                description: "Attempts to reveal the true name of a monster or an item. Success depends on the power of the monster or the cloak of the item relative to the power level of the spell."
            ),
            Spell(
                name: "Hold Monsters",
                realm: .mental,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 6,
                effect: .debuff,
                target: .multipleEnemies(3),
                description: "Attempts to confuse monsters into believing they are paralyzed. Success depends on the power of the monsters relative to the power level of the spell."
            ),
            Spell(
                name: "Mindread",
                realm: .mental,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .utility,
                target: .selfOnly,
                description: "Attempts to discern what's on an NPC's mind. Success depends on the power of the NPC relative to the power level of the spell."
            ),
            Spell(
                name: "Sane Mind",
                realm: .mental,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .utility,
                target: .singleAlly,
                description: "Attempts to restore sanity to an insane character. Success depends on how insane the character is relative to the strength of the spell."
            ),
            Spell(
                name: "Psionic Blast",
                realm: .mental,
                level: 5,
                numberOfDice: 1,
                diceSides: 7,
                manaCost: 8,
                effect: .damage,
                target: .multipleEnemies(3),
                description: "An extreme and powerful jolt of mental energy that scrambles the monsters' brains and causes 1-7 hit points mental damage per power level. May cause insanity."
            ),
            Spell(
                name: "Illusion",
                realm: .mental,
                level: 6,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .summon,
                target: .group,
                description: "Attempts to conjure an illusion of a creature so real that it can fight and attack monsters and, in turn, be attacked by monsters. The amount and power of the illusion depend on the power level of the spell."
            ),
            Spell(
                name: "Wizard's Eye",
                realm: .mental,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .utility,
                target: .selfOnly,
                description: "Allows the caster to see the surrounding area from an overhead view. The size of the area seen depends on the power level of the spell. #1: Just the floor. #2: Obstructions with a 3 square radius. #3: Full view with a 3 square radius. #4: Floor only with a 5 square radius. #5: Obstructions with a 5 square radius. #6: Full view with a 5 square radius."
            ),
            Spell(
                name: "Death",
                realm: .mental,
                level: 7,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .damage,
                target: .singleEnemy,
                description: "Attempts to kill a single monster outright. Success depends on the power of the monster relative to the power level of the spell."
            ),
            Spell(
                name: "Locate Object",
                realm: .mental,
                level: 6,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .utility,
                target: .selfOnly,
                description: "Allows the caster to magically determine the whereabouts of a certain object. Success depends on the location of the item relative to the party, how well the item is hidden and the power level of the spell."),
            Spell(
                name: "Mind Flay",
                realm: .mental,
                level: 7,
                numberOfDice: 4,
                diceSides: 4,
                manaCost: 18,
                effect: .damage,
                target: .allEnemies,
                description: "A concentrated tide of mental assault which devastates the monsters doing 4-16 hit points damage per power level plus potential insanity.")
        ])
        
        // Magic Spells
        spells.append(contentsOf: [
            Spell(
                name: "Heal Wounds",
                realm: .magic,
                level: 1,
                numberOfDice: 1,
                diceSides: 8,
                manaCost: 4,
                effect: .heal,
                target: .singleAlly,
                description: "Heals 1-8 hit points per power level. Heal Wounds will not cure lesser conditions or resurrect dead characters."
            ),
            Spell(
                name: "Make Wounds",
                realm: .magic,
                level: 1,
                numberOfDice: 1,
                diceSides: 8,
                manaCost: 3,
                effect: .damage,
                target: .singleEnemy,
                description: "Invokes divine powers to cause bodily harm, inflicting 1-8 hit points of damage per power level."
            ),
            Spell(
                name: "Magic Missile",
                realm: .magic,
                level: 2,
                numberOfDice: 1,
                diceSides: 7,
                manaCost: 4,
                effect: .damage,
                target: .singleEnemy,
                description: "Small, but powerful missiles of magical energy hurled at an opponent, doing 1-7 hit points of magic damage per power level."
            ),
            Spell(
                name: "Dispel Undead",
                realm: .magic,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 7,
                effect: .debuff,
                target: .singleEnemy,
                description: "Attempts to dispel an animated and undead monster. The success depends on the power of the monster relative to the power level of the spell."
            ),
            Spell(
                name: "Enchanted Blade",
                realm: .magic,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 4,
                effect: .buff,
                target: .group,
                description: "Magically enhances the characters' swords and increases the likelihood of a successful hit upon a monster."
            ),
            Spell(
                name: "Magic Screen",
                realm: .magic,
                level: 3,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .buff,
                target: .group,
                description: "Creates a magical barrier which attempts to protect the party from all spells cast at them. The strength of the barrier is relative to the power level of the spell."
            ),
            Spell(
                name: "Anti-Magic",
                realm: .magic,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 7,
                effect: .debuff,
                target: .multipleEnemies(7),
                description: "Forms a magical barrier around monsters which may cause their spells to fizzle out or backfire."
            ),
            Spell(
                name: "Conjuration",
                realm: .magic,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .summon,
                target: .group,
                description: "Summons monsters from the ethereal planes to fight for the party. The power and number of monsters summoned are relative to the power level."
            ),
            Spell(
                name: "Remove Curse",
                realm: .magic,
                level: 5,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 10,
                effect: .utility,
                target: .selfOnly,
                description: "Attempts to lift a magical curse from an item so that a character can remove the item."
            ),
            Spell(
                name: "Astral Gate",
                realm: .magic,
                level: 4,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 8,
                effect: .debuff,
                target: .singleEnemy,
                description: "Attempts to banish a demon-type monster from this world. Success depends on the power of the monster relative to the power level of the spell."
            ),
            Spell(
                name: "Lifesteal",
                realm: .magic,
                level: 6,
                numberOfDice: 4,
                diceSides: 16,
                manaCost: 12,
                effect: .damage,
                target: .singleEnemy,
                description: "Removes virtually all life force from a monster and channels some of it back into the caster to heal him or her."
            ),
            Spell(
                name: "Word of Death",
                realm: .magic,
                level: 7,
                numberOfDice: 4,
                diceSides: 16,
                manaCost: 18,
                effect: .damage,
                target: .allEnemies,
                description: "A divine word spoken so powerfully that it smashes the monsters with 4-16 hit points of magical damage per power level."
            ),
            Spell(
                name: "Resurrection",
                realm: .magic,
                level: 7,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 20,
                effect: .utility,
                target: .singleAlly,
                description: "Attempts to raise one character from the dead. Success depends on the character's life force relative to the power level of the spell."
            ),
            Spell(
                name: "Death Wish",
                realm: .magic,
                level: 7,
                numberOfDice: nil,
                diceSides: nil,
                manaCost: 20,
                effect: .damage,
                target: .allEnemies,
                description: "Attempts to kill all monsters outright through sheer magical force. Success depends on the power of the monsters relative to the power level of the spell."
            )
        ])
        
        // Populate spell books
        spellBooks = [
            SpellBook(
                spellClass: .alchemist,
                spells: getSpellsByNames([
                    "Blinding Flash", "Fire Bomb", "Stamina", "Cure Paralysis", "Poison",
                    "Stink Bomb", "Air Pocket", "Poison Gas", "Cure Poison", "Deadly Poison",
                    "Purify Air", "Toxic Vapors", "Noxious Fumes", "Asphyxiation", "Deadly Air",
                    "Acid Splash", "Itching Skin", "Web", "Acid Bomb", "Create Life", "Cure Stone"
                ])
            ),
            SpellBook(
                spellClass: .mage,
                spells: getSpellsByNames([
                    "Energy Blast", "Fireball", "Fire Shield", "Prismic Missile", "Firestorm", "Nuclear Blast",
                    "Chilling Touch", "Terror", "Weaken", "Ice Shield", "Iceball", "Deep Freeze",
                    "Missile Shield", "Stink Bomb", "Air Pocket", "Levitate", "Noxious Fumes", "Asphyxiation",
                    "Armor Shield", "Direction", "Knock-Knock", "Web", "Armormelt",
                    "Magic Missile", "Blink", "Magic Screen", "Conjuration", "Anti-Magic", "Astral Gate",
                    "Remove Curse", "Lifesteal", "Word of Death", "Resurrection", "Death Wish"
                ])
            ),
            SpellBook(
                spellClass: .priest,
                spells: getSpellsByNames([
                    "Lightning", "Stamina", "Slow", "Haste", "Cure Paralysis", "Paralyze",
                    "Silence", "Cure Poison", "Whirlwind", "Purify Air",
                    "Armorplate", "Blades", "Cure Stone",
                    "Bless", "Charm", "Cure Lesser Condition", "Divine Trap", "Identify", "Hold Monsters",
                    "Sane Mind", "Death", "Heal Wounds", "Dispel Undead", "Enchanted Blade", "Magic Screen",
                    "Conjuration", "Astral Gate", "Resurrection", "Death Wish"
                ])
            ),
            SpellBook(
                spellClass: .psionic,
                spells: getSpellsByNames([
                    "Stamina", "Terror", "Weaken", "Slow", "Haste", "Cure Paralysis",
                    "Silence", "Knock-Knock", "Blades", "Armormelt",
                    "Mental Attack", "Sleep", "Bless", "Charm", "Cure Lesser Condition", "Divine Trap",
                    "Detect Secret", "Identify", "Hold Monsters", "Mindread", "Sane Mind", "Psionic Blast",
                    "Illusion", "Wizard's Eye", "Death", "Locate Object", "Mind Flay", "Heal Wounds",
                    "Blink", "Lifesteal", "Resurrection"
                ])
            )
        ]
    }
    
    private func getSpellsByNames(_ names: [String]) -> [Spell] {
        return spells.filter { names.contains($0.name) }
    }
    
    func getSpells(byRealm realm: SpellRealm) -> [Spell] {
        return spells.filter { $0.realm == realm }
    }
    
    func addSpell(_ spell: Spell) {
        spells.append(spell)
    }
}
