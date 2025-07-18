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
    var Morning: String
    var Afternoon: String
    var currentMood: String
    
    init(Water: String, Food: String, Morning: String, Afternoon: String,  currentMood: String) {
        self.Water = Water
        self.Food = Food
        self.Morning = Morning
        self.Afternoon = Afternoon
        self.currentMood = currentMood
    }
}

class AnswersViewModel: ObservableObject {
    @Published var water = ""
    @Published var food = ""
    @Published var morning = ""
    @Published var afternoon = ""
    @Published var currentMood = ""
    
}
