//
//  RandomAppIconView.swift
//  SwiftUI-Learning
//
//  Created by Shailendra Nain on 5/6/25.
//
import SwiftUI
import AVFAudio

struct RandomAppIconView: View {
    @State private var image = 0
    @State private var apps = ["App Store", "TV", "Books", "Calculator", "Calendar", "Camera", "Clips", "Clock", "Contacts", "Facetime", "Apple Store"]
    @State private var isRandomBtnClicked = false
    @State private var appName = ""
    let numberOfImages = 11
    @State private var audioPlayer: AVAudioPlayer!
    
    func generateRandomNumber(){
        let randomNumber = Int.random(in: 1...numberOfImages)
        image = randomNumber
    }
    
    func showFirstToLastApp() {
        image >= numberOfImages ? (image = 0) : (image += 1)
    }
    var body: some View {
        VStack(){
            Spacer()
            Image("\(image)")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: 30)
                .animation(.default, value: image)
            Text(image == 0 ? "" : apps[image - 1])
                .foregroundStyle(.indigo)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                .animation(.default, value: apps[image - 1])
            
            Spacer()
            HStack {
                Button((image == 0 || isRandomBtnClicked) ? "Press Me!" : "Image - \(image)") {
                    showFirstToLastApp()
                    isRandomBtnClicked = false
                    let soundName = "soundFile1"
                    guard let soundFile = NSDataAsset(name: soundName) else {
                        print("😡 Could not read file named \(soundName)")
                        return
                    }
                    do {
                        audioPlayer = try AVAudioPlayer(data: soundFile.data)
                        audioPlayer.play()
                    } catch {
                        print("😡 ERROR \(error.localizedDescription) creating audioPlayer")
                    }
                }
                
                
                Button("Random App Icon") {
                    generateRandomNumber()
                    isRandomBtnClicked = true
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title3)
            
        }
        .padding()
    }
}

#Preview {
    RandomAppIconView()
}
