//
//  quoteView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
var bobo = 0
var quotes = ["\"when you fork you can create many different things\" -yj 2023", "\"Generative AIs are prone to hallucination\" -jy soon", "\"bad bot bad bot\" -yjsoon to saumil gpt", "\"i can almost hear the students’ collective moans” - @Kai (2022)\"", "\"Slowmode will never stop our endeavour to count in the wrong places\" -ingo wawa"]
struct quoteView: View {
    var body: some View {
        VStack{
            Button{
               print("tapped")
            } label: {
                Image(systemName: "trash.square.fill")
                    .font(.system(size: 150))
                
            }
            Text("Tap the pic")
        }
    }
}

struct quoteView_Previews: PreviewProvider {
    static var previews: some View {
        quoteView()
    }
}
