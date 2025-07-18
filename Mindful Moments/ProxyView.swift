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
                NavigationLink(destination: ClosingPage()) {
                    Text("Proceed")
                        .font(.headline)
                        .foregroundColor(.green)
                        .bold()

                }
                .tint(.white)
            }
        }
    }
}
#Preview {
    ProxyView()
}
