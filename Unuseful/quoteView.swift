//
//  quoteView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
import Foundation

var quotes = ["\"when you fork you can create many different things\" -yj 2023", "\"Generative AIs are prone to hallucination\" -jy soon", "\"bad bot bad bot\" -yjsoon to saumil gpt", "\"i can almost hear the students’ collective moans” - @Kai (2022)\"", "\"Slowmode will never stop our endeavour to count in the wrong places\" -ingo wawa"]
struct quoteView: View {
    @State private var isRotating = 0.0
    @State private var bobo = 0
    var body: some View {
        VStack{
            Button{
               print("tapped")
               //withAnimation()
                bobo = Int.random(0...4) -1
            } label: {
                Image(systemName: "trash.square.fill")
                    .font(.system(size: 150))
                    .rotationEffect(.degrees(isRotating))
                    .onAppear {
                        withAnimation(.linear(duration: 1.0).speed(0.3).repeatForever(autoreverses: false)) {
                            isRotating = 360.0
                        }
                    }

                    //.offset(x: 0, y: -100)
                    
            }
            Text("Tap the rubbish for rubbish iuhcajjdnqudn")
        }
    }

}

struct quoteView_Previews: PreviewProvider {
    static var previews: some View {
        quoteView()
    }
}
