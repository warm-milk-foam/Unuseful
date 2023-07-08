//
//  starView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI
struct starView: View {
    var starMessages = ["Sir dont share your pee colour in this server", "I just wasted all my super reactions on this, what a great use of $99", "Anyway please continue being ridiculous","Ok nvm I'm cringe", "(Never)", "yuhan trans?????", "That forehead is wider than my sister","Swift Innovator's Summit 2024: Our grand plan to get rid of you","we do not condone hackintoshing","Sir that’s a war crime","IM DA BIGGEST BIRD IM DA BIGGEST BIRD","Its going to my media","Unless you're james or smth","HOW DARE YOU","u chose to join the challenge that’s your problem","FRICK WE MISSED THE OPPORTUNITY TO ASK THEM WHEN WAS APPLE FOUNDED", "Why is yours so normal","i hate swift so much"]
    @State private var currentMessage = ""
    @State private var yLevel1 = 0
    @State private var yLevel2 = 0
    @State private var spinny = 0.0
    @State private var showAchievement = false
    @State private var showImage = false
    @EnvironmentObject private var settings: GameSettings
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.black, .red, .yellow]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack{
                Image("saumil")
                    .cornerRadius(150)
                    .rotation3DEffect(Angle(degrees: spinny), axis: (x:0,y:1,z:0))
                Button{
                    currentMessage = starMessages.randomElement()!
                    yLevel2 = -1000
                    yLevel1 = 10
                    withAnimation(){
                        yLevel2 = 0
                        yLevel1 = 0
                        spinny += 360.0
                    }
                    if currentMessage == "Swift Innovator's Summit 2024: Our grand plan to get rid of you"{
                        showImage = true
                        settings.score += 1
                        showAchievement = true
                    }else{
                        showImage = false
                    }
                }label: {
                    ZStack{
                        Image(systemName: "button.programmable")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.red, .black)
                            .font(.system(size: 150))
                            .rotation3DEffect(Angle(degrees: 60.0), axis: (x:60,y:0,z:0))
                        Text("Press here")
                            .foregroundColor(.black)
                            .rotation3DEffect(Angle(degrees: 40.0), axis: (x:40,y:0,z:0))
                    }
                    .offset(y: CGFloat(yLevel1))
                }
                Text("Saumil says..")
                    .bold()
                    .font(.system(size: 30))
                Text(currentMessage)
                    .multilineTextAlignment(.center)
                    .offset(y: CGFloat(yLevel2))
                if showImage{
                    Image("swiftteam")
                        .resizable()
                        .scaledToFit()
                }
                
            }
            .sheet(isPresented: $showAchievement) {
                sheetView()
            }
        }
    }
}
struct starView_Previews: PreviewProvider {
    static var previews: some View {
        starView()
            .environmentObject(GameSettings())
    }
}
