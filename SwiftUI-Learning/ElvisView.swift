//
//  ElvisView.swift
//  SwiftUI-Learning
//
//  Created by Shailendra Nain on 5/5/25.
//

import SwiftUI

struct ElvisView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    func changeMessage(text: String, img: String) {
        message = text
        imageName = img
    }
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
                
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                Button("Peace") {
                    changeMessage(text: "Peace", img: "peacesign")
                }
                Button("Love") {
                    changeMessage(text: "Love", img: "heart")
                }
                Button("Understanding") {
                    changeMessage(text: "Understanding", img: "lightbulb")
                }
                Button("Reset") {
                    changeMessage(text: "", img: "")
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ElvisView()
}
