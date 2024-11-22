//
//  Skill.swift
//  Fizzle
//
//  Created by Kyle Peterson on 11/21/24.
//

import Foundation

struct Skill: Codable, Identifiable, Hashable {
    let id: UUID
    let name: String
    let type: SkillType
    let description: String
    
    init(name: String, type: SkillType, description: String) {
        self.id = UUID()
        self.name = name
        self.type = type
        self.description = description
    }
}
