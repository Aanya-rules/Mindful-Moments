//
//  AboutUsPage.swift
//  Mindful Moments
//
//  Created by Harshita
//

import SwiftUI

struct AboutUsPage: View {
    var body: some View {
        ZStack {
            // Background Image
            Image("background 3")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    Text("About Us")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.447, saturation: 0.93, brightness: 0.454))
                        .padding(.top, 40)
                    
                    Text("""
                    Mindful Moments is designed to help you take a pause and check in with yourself. 

                    Our mission is to promote mindfulness, self-care, and positive mental health through interactive daily check-ins and reflections.

                    We’re dedicated to creating a safe, supportive space where people can nurture 
                    their mental health. We’re excited to explore meaningful ways this app can 
                    make a positive difference in people’s lives.”

                    Created with love by a team of students passionate about mental wellness. ❤️
                    """)
                        .font(.body)
                        .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Back to Home")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 40)
                }
            }
        }
    }
}

#Preview {
    AboutUsPage()
}

