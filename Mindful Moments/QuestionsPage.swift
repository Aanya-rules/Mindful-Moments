//
//  QuestionsPage.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 15/07/2025.
//

import SwiftUI
import SwiftData
import WebKit

 

struct QuestionsPage: View {
    @State private var newWater = ""
    @State private var newFood = ""
    @State private var newMorning = ""
    @State private var newAfternoon = ""
    @State private var newCurrentMood = ""
    
    @StateObject private var viewModel = AnswersViewModel()
    @State private var showConfirmation = false
    var body: some View {
        
        
        
        NavigationStack {
            
            
            ZStack{
                Image("background 3")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
                
                VStack{
                    HStack {
                        Text("Mindful Questions")
                            .font(.system(size: 35))
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.447, saturation: 0.93, brightness: 0.454))
                    }
                    .padding(20)
                    Spacer()
                    Text("Have you drank water today?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    TextField("Type answer here...", text: $newWater)
                        .padding()
                        .border(Color.accentColor, width: 2)
                        .frame(width: 290.0, height: 40.0)
                    
                    
                    Spacer()
                    
                    Text("Have you eaten today?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    TextField("Type answer here...", text: $newFood)
                        .padding()
                        .border(Color.accentColor, width: 2)
                        .frame(width: 290.0, height: 40.0)
                    
                    
                    Spacer()
                    
                    Text("How was your mood this morning?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    Text("Type in 1-5, 1 being horrible and 5 being amazing")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    TextField("Type here...", text: $newMorning)
                        .padding()
                        .border(Color.accentColor, width: 2)
                        .frame(width: 290.0, height: 40.0)
                    
                    
                    Spacer()
                    Text("How was your mood this afternoon?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    Text("Type in 1-5, 1 being horrible and 5 being amazing")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                
                    TextField("Type here...", text: $newAfternoon)
                        .padding()
                        .border(Color.accentColor, width: 2)
                        .frame(width: 290.0, height: 40.0)
                    Spacer()
                    
                    Text("How is your mood right now?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    Text("Type in 1-5, 1 being horrible and 5 being amazing")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    TextField("Type here...", text: $newCurrentMood)
                        .padding()
                        .border(Color.accentColor, width: 2)
                        .frame(width: 290.0, height: 40.0)
                    
                    
                    Spacer()
                   

                  
                    Button("Save") {
                
                        viewModel.water = newWater
                        viewModel.food = newFood
                        viewModel.morning = newMorning
                        viewModel.afternoon = newAfternoon
                        viewModel.currentMood = newCurrentMood
                        
                        
                        _ = Answers(Water: viewModel.water,
                                    Food: viewModel.food,
                                    Morning: viewModel.morning,
                                    Afternoon: viewModel.afternoon,
                                    currentMood: viewModel.currentMood)

                        // Clear only the UI fields
                        newWater = ""
                        newFood = ""
                        newMorning = ""
                        newAfternoon = ""
                        newCurrentMood = ""

                        showConfirmation = true
                    }
                    .tint(Color.green)
                    .border(Color.gray, width: 2)
                    .cornerRadius(5)
                    .buttonStyle(.borderedProminent)
                    
                    if showConfirmation {
                        Text("Saved successfully!")
                            .foregroundColor(.green)
                            .transition(.opacity)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    showConfirmation = false
                                }
                            }
                    }
                    
                    NavigationLink(destination: DailyAverage(viewModel: viewModel)) {
                        Text("Next")
                        
                            .foregroundColor(.white)
                            .bold()
                        
                        
                        
                        
                    }
                    
                    .border(Color.gray, width: 2)
                    .cornerRadius(5)
                    .buttonStyle(.borderedProminent)
                    
                    HStack {
                        Button("Pause") {
                            AudioManager.shared.pauseMusic()
                        }
                        Button("Resume") {
                            AudioManager.shared.resumeMusic()
                        }
                    }
                }
            }
            .shadow(radius: 1)
        }
        
        
        
        
    }
    struct DailyAverage: View {
        @ObservedObject var viewModel: AnswersViewModel
        
        @State private var average: Double?
        @State private var errorMessage: String?
        
        var body: some View {
            
            NavigationStack {
                
                ZStack {
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    VStack {
                        Text("Daily Average Mood")
                            .font(.system(size: 32, weight: .bold, design: .default))
                            .foregroundColor(Color(red: 0.59, green: 0.665, blue: 0.489))
                        Spacer()
                        
                        Button("Calculate Average") {
                            calculateAverage()
                        }
                        .padding()
                        .background(Color.accent)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                        if let avg = average {
                            Text("Average: \(avg,specifier: "%.1f")")
                                .font(.title)
                            
                        }
                        else if let error = errorMessage{
                            Text(error)
                            
                        }
                        Spacer()
                       
                        WebGIFView(gifName: "beardance")
                            .frame(width: 200, height: 200)
                        Spacer()
                        
                        HStack{
                            NavigationLink(destination: WeeklyandDestinations()) {
                                Text("Destinations")
                                
                                    .foregroundColor(.white)
                                    .bold()
                                
                                
                                
                                
                            }
                            
                            .border(Color.gray, width: 2)
                            .cornerRadius(5)
                            .buttonStyle(.borderedProminent)
                            
                            
                           
                            NavigationLink(destination: ClosingPage()) {
                                Text("affirmations")
                                
                                    .foregroundColor(.white)
                                    .bold()
                                
                                
                                
                                
                            }
                            
                            .border(Color.gray, width: 2)
                            .cornerRadius(5)
                            .buttonStyle(.borderedProminent)
                            
                        }
                    }
                    .padding(.top, 200.0)
                    
                }
           
                
            }
        }

        
        
        func calculateAverage() {
            average = nil
            if let num1 = Int(viewModel.morning),
               let num2 = Int(viewModel.afternoon),
               let num3 = Int(viewModel.currentMood),
               (1...5).contains(num1),
               (1...5).contains(num2),
               (1...5).contains(num3) {
                
                average = Double(num1 + num2 + num3) / 3.0
                errorMessage = nil
            } else {
                average = nil
                errorMessage = "Please enter valid numbers between 1 and 5."
            }
            
        }

    }
        
        
    }
    #Preview {
    QuestionsPage()
        .modelContainer(for: Answers.self, inMemory: true)
}

