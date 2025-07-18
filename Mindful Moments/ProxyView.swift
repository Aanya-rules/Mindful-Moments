//
//  ProxyView.swift
//  Mindful Moments
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct ProxyView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Daily Average")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.green)
                    .padding()
                HStack {
                    Text("🙂")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    Text("😐")
                        .font(.largeTitle)
                    Text("😰")
                        .font(.largeTitle)
                    Text("😱")
                        .font(.largeTitle)
                }
                .padding()
                HStack {
                    Text("Mild")
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                    Text("Moderate")
                        .font(.headline)
                    Text("Severe")
                        .font(.headline)
                    Text("Panic")
                        .font(.headline)
                }
                .padding()
                Text("Mild Anxiety")
                    .font(.callout)
                    .fontWeight(.heavy)
                    .padding()
                NavigationLink(destination: ClosingPage()) {
                    Text("Take Action")
                        .font(.title3)
                        .foregroundColor(.green)
                        .bold()

                }
                
            }
            .tint(.white)
        }
    }
}
#Preview {
    ProxyView()
}
