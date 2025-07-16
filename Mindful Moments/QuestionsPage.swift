//
//  QuestionsPage.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 15/07/2025.
//

import SwiftUI

struct QuestionsPage: View {
   
    var body: some View {
        
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
                TextField("Type answer here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .border(Color.accent, width: 2)
                    .padding(.horizontal, 50.0)
                 
                Spacer()
                
                Text("Have you eaten today?")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                
                TextField("Type answer here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .border(Color.accent, width: 2)
                    .padding(.horizontal, 50.0)
               
                Spacer()
               
                Text("How was your mood this morning?")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                HStack{
                    Button {
                        
                    } label: {
                        Text("😁")
                            .font(.callout)
                            .fontWeight(.bold)
                    }
                    .padding(.leading, 40.0)
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("🙂")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 1.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😒")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 1.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😕")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 2.0)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("☹️")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 2.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😡")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 40.0)
                    }
                }
                Spacer()
                Text("How was your mood this afternoon?")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                HStack{
                    Button {
                        
                    } label: {
                        Text("😁")
                            .font(.callout)
                            .fontWeight(.bold)
                    }
                    .padding(.leading, 40.0)
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("🙂")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 1.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😒")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 1.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😕")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 2.0)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("☹️")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 2.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😡")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 40.0)
                    }
                }
                Spacer()
                Text("How is your mood right now?")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.035, green: 0.454, blue: 0.32))
                HStack{
                    Button {
                        
                    } label: {
                        Text("😁")
                            .font(.callout)
                            .fontWeight(.bold)
                    }
                    .padding(.leading, 40.0)
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("🙂")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 1.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😒")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 1.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😕")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 2.0)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("☹️")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 2.0)
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("😡")
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding(.trailing, 40.0)
                    }
                }
                Spacer()
            }
        }
    }
}
#Preview {
    QuestionsPage()
}
