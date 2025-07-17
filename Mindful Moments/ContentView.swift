//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var password = ""
    @State private var textTitle = "Welcome"
    var body: some View {
        NavigationStack {
        ZStack {
            Image("background")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Mindful Moments")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.504, saturation: 0.82, brightness: 0.604))
                    
                    
                withAnimation {
                    Text(textTitle)
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.324, saturation: 0.531, brightness: 0.558))
                        .bold()
                }
                .padding(.all)
                TextField("Type your name here...", text: $name)
                    .padding()
                    .border(Color.gray, width: 4)
                    .frame(width: 350.0, height: 70.0)
                TextField("Type your password here...", text: $password)
                    .padding()
                    .border(Color.gray, width: 4)
                    .frame(width: 350.0, height: 70.0)
                
            
                
                NavigationLink(destination: QuestionsPage()) {
                    Text("Login")
                        .foregroundColor(.black)
                        .bold()
                    
                    
                }

                .border(Color(hue: 0.282, saturation: 0.822, brightness: 0.486), width: 4)
                .cornerRadius(5)
                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        //.padding()
        
       }
    }
}
#Preview {
    ContentView()
}

