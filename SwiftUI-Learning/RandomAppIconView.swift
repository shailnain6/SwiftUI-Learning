//
//  RandomAppIconView.swift
//  SwiftUI-Learning
//
//  Created by Shailendra Nain on 5/6/25.
//

import SwiftUI

struct RandomAppIconView: View {
    @State private var image = 0
    
    func generateRandomNumber(){
        var randomNumber = Int.random(in: 1...11)
        image = randomNumber
    }
    var body: some View {
        VStack(){
            Spacer()
            Image("\(image)")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: 30)
            Spacer()
            Button("Generate Icon") {
                generateRandomNumber()
            }
            .buttonStyle(.borderedProminent)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    RandomAppIconView()
}
