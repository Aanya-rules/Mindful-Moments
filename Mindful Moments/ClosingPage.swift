//
//  ClosingPage.swift
//  Mindful Moments
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct ClosingPage: View {
    var body: some View {
        VStack {
            Text("Be kind to yourself!")
                .font(.largeTitle)
                .foregroundColor(Color(hue: 0.33, saturation: 0.669, brightness: 0.598))
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .bold()
            
            Text("Remember to:")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(Color(hue: 0.471, saturation: 0.721, brightness: 0.503))
                .padding()
            
            Text("1. Practice deep breathing.")
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            Text("It helps more than you think.")
                .padding()
            Text("2. Speak positive affirmations loud.")
                .fontWeight(.heavy)
                .padding()
                .multilineTextAlignment(.center)
            Text("Sometimes, it's better to hear them out loud.")
                .padding()
                .multilineTextAlignment(.center)
            
            Text("3. Don't forget, somebody cares about you!")
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding()
            Text("So, let someone know you care about them too.")
                .fontWeight(.regular)
                .padding()
        }
    }
}

#Preview {
    ClosingPage()
}
