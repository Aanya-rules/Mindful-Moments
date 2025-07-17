//
//  QuestionsPage.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 15/07/2025.
//

import SwiftUI
import SwiftData

struct QuestionsPage: View {
    @State private var newWater = ""
    @State private var newFood = ""
    @State private var newMorning = ""
    @State private var newAfternoon = ""
    @State private var newNow = ""
 
    var body: some View {
        
        //friends array
      
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
                        .border(Color.accent, width: 2)
                        .padding(.horizontal, 50.0)
                    
                    Spacer()
                    
                    Text("Have you eaten today?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    TextField("Type answer here...", text: $newFood)
                        .border(Color.accent, width: 2)
                        .padding(.horizontal, 50.0)
                    
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
                        .border(Color.accent, width: 2)
                        .padding(.horizontal, 50.0)
                    
                    Spacer()
                    Text("How was your mood this afternoon?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                    
                    TextField("Type here...", text: $newAfternoon)
                        .border(Color.accent, width: 2)
                        .padding(.horizontal, 50.0)
                    
                    Spacer()
                    Text("How is your mood right now?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                   
                    TextField("Type here...", text: $newNow)
                        .border(Color.accent, width: 2)
                        .padding(.horizontal, 50.0)
                    
                    Spacer()
                    Button("Save") {
                        _ = Answers(Water: newWater, Food: newFood, Morning: newMorning, Afternoon: newAfternoon, Now: newNow)
                        newFood = ""
                        newWater = ""
                        newMorning = ""
                        newAfternoon = ""
                        newNow = ""
                    }
                    .tint(Color.green)
                    .border(Color.gray, width: 2)
                    .cornerRadius(5)
                    .buttonStyle(.borderedProminent)
                    
                    NavigationLink(destination: WeeklyandDestinations()) {
                        Text("Next")
                        
                            .foregroundColor(.white)
                            .bold()
                           
                        
                        
                    }
                    
                    .border(Color.gray, width: 2)
                    .cornerRadius(5)
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}
#Preview {
    QuestionsPage()
        .modelContainer(for: Answers.self, inMemory: true)
}
