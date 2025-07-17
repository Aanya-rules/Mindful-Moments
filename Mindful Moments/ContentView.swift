//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/9/25.
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
                
                    .tint(.white)
                
            
                
                NavigationLink(destination: ClosingPage()) {
                    Text("Login")
                        .foregroundColor(.white)
                        .bold()
                    
                    
                }

                .border(Color(hue: 0.282, saturation: 0.822, brightness: 0.486), width: 4)
                .cornerRadius(5)
                
                .padding()
                Text("Forgot password?")
                    .font(.subheadline)
                    .foregroundColor(.green)
                

                WebGIFView(gifName: "bearsleep")
                    .frame(width: 200, height: 200)


                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            .shadow(radius: 3)
        }
        //.padding()
        
       }
    }
}
#Preview {
    ContentView()
}

