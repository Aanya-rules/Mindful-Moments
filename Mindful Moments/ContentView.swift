//
//  ContentView.swift
//  InteractiveUI
//  Created by Scholar on 7/9/25.
//

import SwiftUI
import WebKit

// Gifs!
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

// Audio
import AVFoundation

class AudioManager {
    static let shared = AudioManager()
    private var audioPlayer: AVAudioPlayer?

    private init() {
        setupAudioSession()
        startBackgroundMusic()
    }

    private func setupAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Audio session setup failed: \(error)")
        }
    }

    private func startBackgroundMusic() {
        guard let url = Bundle.main.url(forResource: "coffee_house", withExtension: "mp3") else {
            print("MP3 file not found.")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1 // Loop indefinitely
            audioPlayer?.volume = 1.0
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Failed to initialize audio player: \(error)")
        }
    }

    func stopMusic() {
        audioPlayer?.stop()
    }

    func pauseMusic() {
        audioPlayer?.pause()
    }

    func resumeMusic() {
        audioPlayer?.play()
    }
}

// Code
struct ContentView: View {
    @State private var name = ""
    @State private var password = ""
    @State private var textTitle = "Welcome"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("background")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
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
                    
                    // Login button
                    NavigationLink(destination: ClosingPage()) {
                        Text("Login")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 200, height: 50) // consistent sizing
                    }
                    .background(Color(hue: 0.282, saturation: 0.822, brightness: 0.486))
                    .cornerRadius(10)
                    .padding(.top, 10)
                    
                    // About Us button
                    NavigationLink(destination: AboutUsPage()) {
                        Text("About Us")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 200, height: 50) // consistent sizing
                    }
                    .background(Color(hue: 0.282, saturation: 0.822, brightness: 0.486))
                    .cornerRadius(10)
                    .padding(.bottom, 10)
                    
                    Text("Forgot password?")
                        .font(.subheadline)
                        .foregroundColor(.green)
                    
                    HStack {
                        Button("Pause") {
                            AudioManager.shared.pauseMusic()
                        }
                        Button("Resume") {
                            AudioManager.shared.resumeMusic()
                        }
                    }
                    
                    WebGIFView(gifName: "bearsleep")
                        .frame(width: 200, height: 200)
                }
                .padding()
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .shadow(radius: 3)
            }
        }
    }
}

#Preview {
    ContentView()
}


