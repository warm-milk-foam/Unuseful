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
    @State private var isRotating = false
    @State private var bobo = 0
    @State private var isSheetPresented = false
    @State private var random = 0
    @State private var animationDuration = 1.0
    @State var speedbutton = 1.0
    @State var speed = 1.0
    var body: some View {
        ZStack {

            VStack(spacing: 20) {
                Text("✨Garbage✨")
                    .padding()
                    .foregroundColor(.gray)
                    .background(.red)
                    .offset(y:  -60)
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)

                Text("Tap the rubbish for rubbish iuhcajjdnqudn (tap it enough times for something cool) !!!!!1!1!11!!!!1!1")
                .multilineTextAlignment(.center)
                .offset(y:-50)
                Button {
                    print("tapped")
                    bobo = Int.random(in: 0...5)
                    let woman = Int.random(in: 0...15)
                    let random = Int.random(in: 2...6)
                    speedbutton += 1
                    animationDuration = animationDuration * 0.95
                    speed += 1
                    print(speedbutton)
                    print(random)
                    if woman == 3 {
                        isSheetPresented = true
                    }
                } label: {
                    Image(systemName: "trash.square.fill")
                        .font(.system(size: 150))
                        .rotationEffect(.degrees(isRotating ? 360 : 0))
                        .animation(.linear(duration: 0.5).repeatForever(autoreverses: false), value: speed)
                        .onChange(of: speedbutton) { speed in
                            withAnimation(.linear(duration: animationDuration).speed(1)  .repeatForever(autoreverses: false)) {
                                isRotating.toggle()
                            }
                            print("Refreshed")
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
