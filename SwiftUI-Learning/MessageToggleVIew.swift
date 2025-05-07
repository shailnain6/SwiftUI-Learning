//
//  MessageToggleVIew.swift
//  SwiftUI-Learning
//
//  Created by Shailendra Nain on 5/6/25.
//

import SwiftUI

struct MessageToggleVIew: View {
    @State private var text = ""
    @State private var imageName = ""
    @State private var color: Color = Color.white

    func updateTextAndImage(txt: String, img: String, clr: Color) {
        text = txt
        imageName = img
        color = clr
    }
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .foregroundColor(Color(color))
                .scaledToFit()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            Button("Press Me!") {
                if text == "" {
                    updateTextAndImage(txt: "You are awesome", img: "sun.max.fill", clr: Color.blue)
                } else if text == "You are awesome" {
                    updateTextAndImage(txt: "You are great!", img: "hand.thumbsup", clr: Color.yellow)
                } else {
                    updateTextAndImage(txt: "", img: "", clr: Color.white)
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.orange)
        }
        .padding()
    }
}

#Preview {
    MessageToggleVIew()
}
