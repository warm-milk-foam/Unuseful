//
//  quoteView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
import Foundation

var quotes = ["\"when you fork you can create many different things\" -yj 2023", "\"Generative AIs are prone to hallucination\" -jy soon", "\"bad bot bad bot\" -yjsoon to saumil gpt", "\"i can almost hear the students’ collective moans” - @Kai (2022)\"", "\"Slowmode will never stop our endeavour to count in the wrong places\" -ingo wawa","\"Damn, imagine not being able to send messages in this channel\" - Sean"]
struct quoteView: View {
    @State private var isRotating = 0.0
    @State private var bobo = 0
    @State private var isSheetPresented = false
    
    var body: some View {
        ZStack {

            VStack(spacing: 20) {
                Text("Tap the rubbish for rubbish iuhcajjdnqudn (tap it enough times for something cool)")
                .multilineTextAlignment(.center)
                .offset(y:-50)
                Button {
                    print("tapped")
                    bobo = Int.random(in: 0...5)
                    let woman = Int.random(in: 0...15)
                    if woman == 3 {
                        isSheetPresented = true
                    }
                } label: {
                    Image(systemName: "trash.square.fill")
                        .font(.system(size: 150))
                        .rotationEffect(.degrees(isRotating))
                        .onAppear {
                            withAnimation(.linear(duration: 1.0).speed(0.3).repeatForever(autoreverses: false)) {
                                isRotating = 360.0
                            }
                        }
                }
                .offset(y: -40)
                
                
                Text("Quote of the day:")
                    .multilineTextAlignment(.center)
                Text(quotes[bobo])
                    .multilineTextAlignment(.center)
                    .italic()
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            VStack {
                Text("uhhhhhhh have fun lol")
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct quoteView_Previews: PreviewProvider {
    static var previews: some View {
        quoteView()
    }
}
