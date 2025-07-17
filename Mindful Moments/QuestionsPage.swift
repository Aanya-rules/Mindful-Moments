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
    @State private var newNow = ""
 
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
                   
                    TextField("Type here...", text: $newNow)
                        .padding()
                        .border(Color.accentColor, width: 2)
                        .frame(width: 290.0, height: 40.0)
                       
                    
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
                    
                    NavigationLink(destination: DailyAverage()) {
                        Text("Next")
                        
                            .foregroundColor(.white)
                            .bold()
                           
                        
                        
                    }
                    
                    .border(Color.gray, width: 2)
                    .cornerRadius(5)
                    .buttonStyle(.borderedProminent)
                }
            }
            .shadow(radius: 1)
        }
       
            
        

    }
    struct DailyAverage: View {
        let newMorning = ""
        let newAfternoon = ""
        let newNow = ""
        
        @State private var average: Double?
        
        var body: some View {
            ZStack {
                Image("background 2")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Daily Average Mood")
                        .font(.system(size: 32, weight: .bold, design: .default))
                        .foregroundColor(Color(red: 0.395, green: 0.481, blue: 0.307))
                    Spacer()
                    Button("Calculate Average") {
                        calculateAverage()
                    }
                    .padding()
                    .background(Color.accent)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    if let Average = average {
                        Text("Average: \(Average)")
                            .font(.title)
                    }
                  Spacer()
                    
                    WebGIFView(gifName: "beardance")
                        .frame(width: 200, height: 200)
                   
                }
                .padding()
            }
           
            }
        func calculateAverage() {
            
            if let num1 = Int(newMorning),
               let num2 = Int(newAfternoon),
               let num3 = Int(newNow) {
                
                average = Double(num1 + num2 + num3) / 3.0
            } else {
                average = nil  // Invalid input
            }
        }
    }
        
}

    #Preview {
    QuestionsPage()
        .modelContainer(for: Answers.self, inMemory: true)
}
