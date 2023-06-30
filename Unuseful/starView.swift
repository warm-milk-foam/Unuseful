//
//  starView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
var starMessages = ["Sir dont share your pee colour in this server", "I just wasted all my super reactions on this, what a great use of $99", "Anyway please continue being ridiculous","Ok nvm I'm cringe", "(Never)", "yuhan trans?????", "That forehead is wider than my sister"]
struct starView: View {
    var body: some View {
        Text(starMessages[0])
            .multilineTextAlignment(.center)
    }
}

struct starView_Previews: PreviewProvider {
    static var previews: some View {
        starView()
    }
}
