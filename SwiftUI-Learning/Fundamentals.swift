//
//  Fundamentals.swift
//  SwiftUI-Learning
//
//  Created by Shailendra Nain on 5/11/25.
//

import SwiftUI

struct Fundamentals: View {
    
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill(.blue.gradient)
                
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.7)
                    .foregroundColor(.orange)
            }
            Text("SwiftUI")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.orange)
                
        }
        .padding()
    }
}

#Preview {
    Fundamentals()
}
