//
//  Answers.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 16/07/2025.
//

import Foundation
import SwiftData

@Model
class Answers {
    var Water: String
    var Food: String
    
    init(Water: String, Food: String) {
        self.Water = Water
        self.Food = Food
    }
}
