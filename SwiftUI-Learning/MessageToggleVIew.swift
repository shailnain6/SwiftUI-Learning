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
                let txt1 = "Its a Sunny Day"
                let txt2 = "You are right!"
                let image = "sun.max.fill"
                let image1 = "hand.thumbsup"
                text == "" ? 
                updateTextAndImage(txt: txt1, img: image, clr: Color.yellow) :
                text == txt1 ?
                updateTextAndImage(txt: txt2, img: image1, clr: Color.blue) :
                updateTextAndImage(txt: "", img: "", clr: Color.white)
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
