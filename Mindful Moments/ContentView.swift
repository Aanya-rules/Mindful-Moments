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
    @State private var textTitle = "Welcome back."
    var body: some View {
        VStack {
            withAnimation {
                Text(textTitle)
                .font(.largeTitle)
                .foregroundColor(.green)
                .bold()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            TextField("Type your name here...", text: $name)
                .padding()
                .border(Color.gray, width: 4)
            TextField("Type your password here...", text: $password)
                .padding()
                .border(Color.gray, width: 4)
         
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                }
            }



            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        //.padding()
        
    }

        
        #Preview {
            ContentView()
        }

