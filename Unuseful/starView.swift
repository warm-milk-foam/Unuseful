//
//  starView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
struct starView: View {
    var starMessages = ["Sir dont share your pee colour in this server", "I just wasted all my super reactions on this, what a great use of $99", "Anyway please continue being ridiculous","Ok nvm I'm cringe", "(Never)", "yuhan trans?????", "That forehead is wider than my sister","Swift Innovator's Summit 2024: Our grand plan to get rid of you","we do not condone hackintoshing","Sir that’s a war crime","IM DA BIGGEST BIRD IM DA BIGGEST BIRD","Its going to my media","Unless you're james or smth"]
    @State private var currentMessage = ""
    var body: some View {
        VStack{
            Button{
                currentMessage = starMessages.randomElement()!
            }label: {
                ZStack{
                    Image(systemName: "button.programmable")
                        .font(.system(size: 150))
                        .rotation3DEffect(Angle(degrees: 60.0), axis: (x:60,y:0,z:0))
                            Text("Press here")
                        .foregroundColor(.black)
                }
            }
            Text("Saumil says..")
                .bold()
                .font(.system(size: 30))
            Text(currentMessage)
                .multilineTextAlignment(.center)
        }
    }
}

struct starView_Previews: PreviewProvider {
    static var previews: some View {
        starView()
    }
}
