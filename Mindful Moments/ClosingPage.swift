//
//  ClosingPage.swift
//  Mindful Moments
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI
import WebKit

struct WebGIFView: UIViewRepresentable {
    let gifName: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.isOpaque = false
        webView.backgroundColor = .clear
        webView.scrollView.backgroundColor = .clear

        if let path = Bundle.main.path(forResource: gifName, ofType: "gif") {
            let url = URL(fileURLWithPath: path)
            let data = try! Data(contentsOf: url)
            webView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        }

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

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
            }
        }
    }
}

#Preview {
    ClosingPage()
}
