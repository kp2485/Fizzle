//
//  Malady.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/22/24.
//

import Foundation

enum Malady: String, Codable, CaseIterable {
    case afraid
    case asleep
    case blindness
    case dead
    case insanity
    case irritation
    case nausea
    case paralyzed
    case poisoned
    case stoned

    /// The detailed description of the malady.
    var description: String {
        switch self {
        case .afraid:
            return "Afraid characters will quake with fear at the sight of monsters, making such characters less capable and confident. Afraid characters may even try to run away! If a character is scared enough, a tiny field mouse will begin to resemble a huge, fire-breathing dragon with grimacing teeth."
        case .asleep:
            return "Sleeping characters are incredibly easy to hit because they are unable to avoid being struck. If hit, a sleeping character will take up to double damage, but will wake up immediately. Of course, a sleeping character cannot participate in combat."
        case .blindness:
            return "A blind character can't see what's going on and is more susceptible to a hit because of this. Further, it's not likely he or she will hit a monster without a lot of luck."
        case .dead:
            return "A dead character is exactly that - dead. He or she must be resurrected by magical means. When a character dies, he or she loses a point of vitality."
        case .insanity:
            return "An insane character is, at least for the time being, absolutely nuts. For magical reasons, his or her brain has been scrambled like an egg missing its side order of bacon. You'll have no control, whatsoever, over the character."
        case .irritation:
            return "Like that scratch you can never seem to reach, your characters will become preoccupied trying to quell an irritating itch. As a result, they won't fight as well."
        case .nausea:
            return "There is a chance that a nauseated character may choke and gag and be helpless for the remainder of the round. Should this happen, the character will be an exceptionally easy target."
        case .paralyzed:
            return "Since the character can't move, even to fight, he or she is very easy to hit and can take up to double damage from an attack. However, there is a small chance the hit might just be enough to jolt the character's system back into action."
        case .poisoned:
            return "As the poison seeps through the character's bloodstream, he or she becomes sicker and sicker. Eventually, without an antidote or some rest, the character will die. Sometimes poison is so potent, resting will not cure it quickly enough; the character will die first, thereby making the antidote absolutely necessary."
        case .stoned:
            return "Since your character is officially a statue, he or she can't do anything but stand there and collect bird droppings. Stoned characters are easy to hit, but it's difficult to penetrate their stone. Stoning might be worse than death. Stoned characters lose a point of vitality, and when cured of the stoning, they may be dead. When you resurrect the dead character, he or she loses yet another point of vitality."
        }
    }
}
