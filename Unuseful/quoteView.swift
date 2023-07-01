//
//  quoteView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
import Foundation

var quotes = ["\"when you fork you can create many different things\" -yj 2023", "\"Generative AIs are prone to hallucination\" -jy soon", "\"bad bot bad bot\" -yjsoon to saumil gpt", "\"i can almost hear the students’ collective moans” - @Kai (2022)\"", "\"Slowmode will never stop our endeavour to count in the wrong places\" -ingo wawa","\"Damn, imagine not being able to send messages in this channel\" - Sean", "Look behind you.", "just look at the rubbish bin have a seizure are you proud"]
struct quoteView: View {
    @State private var isRotating = false
    @State private var bobo = 0
    @State private var isSheetPresented = false
    @State private var random = 0
    @State private var animationDuration = 1.0
    @State var speedbutton = 1.0
    @State var speed = 1.0
    @State var numclick = 0
    var body: some View {
        ZStack {
            Image("who is this")
              //  .scaledToFit()
                .frame(width: 10, height: 10)
            //    .offset(y:)
            VStack(spacing: 20) {
                Text("✨Garbage✨")
                    .padding()
                    
                    .foregroundColor(.gray)
                    .background(.red)
                    .cornerRadius(60)
                    .offset(y:  -60)
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                 //   .LinearGradient
                    

                Text("""
                     Tap the rubbish for rubbish
                     iuhcajjdnqudn(tap it enough
                     times for something cool) !!!!!1!1!11!!!!1!1
                     """)
                    //.cornerRadius(30)
                    .padding()
                    .background(.cyan)
                    .cornerRadius(10)
                .multilineTextAlignment(.center)
                .offset(y:-50)
                Button {
                  // print("tapped")
                    bobo = Int.random(in: 0...7)
                    let woman = Int.random(in: 0...15)
                 //   let random = Int.random(in: 2...6)
                    speedbutton += 1
                    animationDuration = animationDuration * 0.95
                    speed += 1
                //    print(speedbutton)
                  //  print(random)
                    if woman == 3 {
                        isSheetPresented = true
                    numclick += 1
                    }
                } label: {
                    Image(systemName: "trash.square.fill")
                        .background(.white)
                        .cornerRadius(20)
                        .font(.system(size: 150))
                        .rotationEffect(.degrees(isRotating ? 360 : 0))
                                                .animation(.linear(duration: 0.5).repeatForever(autoreverses: false), value: speed)
                        .onChange(of: speedbutton) { speed in
                            withAnimation(.linear(duration: animationDuration).speed(1)  .repeatForever(autoreverses: false)) {
                                isRotating.toggle()
                            }
             //               print("Refreshed")
                        }
                }
                .offset(y: -40)
                
                
                Text("🚮wise wisdom:🚮")
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(.white)
                    .cornerRadius(25)
                    .bold()
                Text(quotes[bobo])
                    .multilineTextAlignment(.center)
                    .italic()
                    .padding()
                    .foregroundColor(.yellow)
                    .background(.green)
                    .cornerRadius(20)
                    .bold()
                
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            VStack {
                Text("⭐️HAOOOOOOOOO⭐️")
                    .padding()
                    .background(.red)
                    .foregroundColor(.cyan)
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Notice jiahen in the back")
                    .font(.system(size:10))
                    .opacity(0.5)
                    .strikethrough()
                Text("sheet")
                    .font(.system(size:10))
                    .opacity(0.5)
                    .strikethrough()
            }
        }
    }
}

struct quoteView_Previews: PreviewProvider {
    static var previews: some View {
        quoteView()
    }
}
