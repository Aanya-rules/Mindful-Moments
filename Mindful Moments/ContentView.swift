//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "Welcome back."
    var body: some View {
        VStack {
            withAnimation {
                Text(textTitle)

            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            TextField("Type your name here...", text: $name)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 4)
            Button("Submit Name") {
                withAnimation{
                    textTitle = "Welcome to Mindful Moments, \(name)!"
                        .font(.title)
                        .foregroundColor(.green)
                }
                print(name)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
        
    }
}
        
        #Preview {
            ContentView()
        }

