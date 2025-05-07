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
        let randomNumber = Int.random(in: 1...11)
        image = randomNumber
    }
    
    func showFirstToLastApp() {
        image >= 11 ? (image = 0) : (image += 1)
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
            HStack {
                Button(image == 0 ? "Press Me!" : "Image - \(image)") {
                    showFirstToLastApp()
                }
                
                Button("Random App Icon") {
                    generateRandomNumber()
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
