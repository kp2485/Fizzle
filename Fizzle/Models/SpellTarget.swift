//
//  SpellTarget.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

enum SpellTarget: Codable {
    case singleEnemy
    case multipleEnemies(Int?) // Optional: number of enemies (e.g., 3 monsters + power level). nil value attacks all enemies in a group, match the count when implementing.
    case allEnemies
    case group
    case selfOnly
    case singleAlly
    case dynamic(description: String) // Handles cases like random effects or power-level dependent targeting.

    /// Decodes SpellTarget for Codable support.
    enum CodingKeys: String, CodingKey {
        case type, value
    }

    /// Encodes the SpellTarget for serialization.
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .singleEnemy:
            try container.encode("singleEnemy", forKey: .type)
        case .multipleEnemies(let count):
            try container.encode("multipleEnemies", forKey: .type)
            try container.encodeIfPresent(count, forKey: .value)
        case .allEnemies:
            try container.encode("allEnemies", forKey: .type)
        case .group:
            try container.encode("group", forKey: .type)
        case .selfOnly:
            try container.encode("selfOnly", forKey: .type)
        case .singleAlly:
            try container.encode("singleAlly", forKey: .type)
        case .dynamic(let description):
            try container.encode("dynamic", forKey: .type)
            try container.encode(description, forKey: .value)
        }
    }

    /// Decodes SpellTarget from serialized data.
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "singleEnemy":
            self = .singleEnemy
        case "multipleEnemies":
            let count = try container.decodeIfPresent(Int.self, forKey: .value)
            self = .multipleEnemies(count)
        case "group":
            self = .group
        case "selfOnly":
            self = .selfOnly
        case "singleAlly":
            self = .singleAlly
        case "dynamic":
            let description = try container.decode(String.self, forKey: .value)
            self = .dynamic(description: description)
        default:
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown type \(type)")
        }
    }
}
