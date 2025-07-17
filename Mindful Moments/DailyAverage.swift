//
//  DailyAverage.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 17/07/2025.
//

import SwiftUI

struct DailyAverage: View {
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Daily Average Mood")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 0.59, green: 0.665, blue: 0.489))
             
            }
        }
        
    }
}

#Preview {
    DailyAverage()
}
