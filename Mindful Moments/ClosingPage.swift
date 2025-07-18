//
//  ClosingPage.swift
//  Mindful Moments
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI
import WebKit

struct ClosingPage: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Be kind to yourself!")
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 0.299, saturation: 0.639, brightness: 0.422))
                    .bold()
                    .padding()
                
                Text("Remember to:")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.orange)
                    .padding()
                
                Text("1. Practice deep breathing.")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color(hue: 0.471, saturation: 0.721, brightness: 0.503))
                Text("It helps more than you think.")
                    .padding()
                Text("2. Speak positive affirmations loud.")
                    .fontWeight(.heavy)
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.471, saturation: 0.721, brightness: 0.503))
                Text("Sometimes, it's better to hear them out loud.")
                    .padding()
                    .multilineTextAlignment(.center)
                
                Text("3. Don't forget, somebody cares about you!")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color(hue: 0.471, saturation: 0.721, brightness: 0.503))
                Text("So, let someone know you care about them too.")
                    .fontWeight(.regular)
                    .padding()
                
                
                WebGIFView(gifName: "beardoctor")
                    .frame(width: 200, height: 200)
                
                }
            
                  
                    
                }
            }
        }
    
    
    #Preview {
        ClosingPage()
    }

