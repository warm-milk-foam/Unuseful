//
//  ContentView.swift
//  Unuseful
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

struct ContentView: View {
    var starMessages = ["Sir dont share your pee colour in this server", "I just wasted all my super reactions on this, what a great use of $99", "Anyway please continue being ridiculous","Ok nvm I'm cringe", "(Never)", "yuhan trans?????", "That forehead is wider than my sister"]
    var pictures = [Image("froggy"), Image("valid"), Image("thet pai"), Image("st josephs"),  Image("flashbang"), Image("blinded"), Image("lmao"), Image("HAO yuan"), Image("camare"), Image("darter"), Image("why not"), Image("this tree got bite"), Image("who is this"), Image("mr thieffffff"), Image("no bchs?"),]
    var body: some View {
        VStack {
            pictures[0] // test image
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.system(size: 40))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
