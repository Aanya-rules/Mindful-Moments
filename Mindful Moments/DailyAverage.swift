//
//  DailyAverage.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 17/07/2025.
//

import SwiftUI

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
    
#Preview {
    DailyAverage(viewModel: AnswersViewModel())
}
