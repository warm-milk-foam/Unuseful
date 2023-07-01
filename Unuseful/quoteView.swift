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
        ZStack{
            Image("3")
            VStack{
                Button {
                   print("tapped")
                   //withAnimation()
                    bobo = Int.random(in: 0...5) ;
                    let woman = Int.random(in: 0...15)
                    if woman == 3 {
                        isSheetPresented = true
                    }
                } label: {
                    Image(systemName: "trash.square.fill")
                        .font(.system(size: 150))
                        .offset(y: -40)
                        .rotationEffect(.degrees(isRotating))
                        .onAppear {
                            withAnimation(.linear(duration: 1.0).speed(0.3).repeatForever(autoreverses: false)) {
                                isRotating = 360.0
                            }
                        }

                        //.offset(x: 0, y: -100)
                        
                }
                .sheet(isPresented: $isSheetPresented) {
                    Text("uhhhhhhh have fun lol")
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Text("Tap the rubbish for rubbish iuhcajjdnqudn (tap it enough times for something cool)")
                    .multilineTextAlignment(.center)
                    .offset(x:0, y: -260)
                Text(quotes[bobo])
                    .offset(x:0, y:40)
                    .multilineTextAlignment(.center)
            }
        }

    }

}

struct quoteView_Previews: PreviewProvider {
    static var previews: some View {
        quoteView()
    }
}
