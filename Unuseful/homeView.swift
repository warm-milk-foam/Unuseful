//
//  homeView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI

struct homeView: View {
    @State private var angle = 0.0
    @State private var yLo = -600.0
    @State private var showAchievement = false
    @EnvironmentObject private var settings: GameSettings

    var body: some View {
        ZStack{
            
            Image("kilometer immorales")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            VStack{
                Image("cookies")
                Button{
                        withAnimation(.linear(duration: 5.0)){
                            angle += 90.0
                            yLo = 0.0
                            
                    }
                    settings.score += 1
                }label: {
                    Text("Accept all cookies")
                        .font(.largeTitle)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
            }
            .scaledToFit()
            .rotation3DEffect(Angle(degrees: angle), axis: (x:angle,y:0,z:0))

            Image("tablecanon")
                .resizable()
                .scaledToFit()
//                .offset(y:yLo)
            Button{
                showAchievement=true
            }label: {
                Text("/")
                    .font(.system(size: 4))
                    .padding()
                    .background(.white)
                    .opacity(0)
            }
            .offset(x:35,y:-77)
            
            .sheet(isPresented: $showAchievement) {
                Image("achievement (home)")
                Text("Congratulations! You found an easter egg.")
                    .presentationDetents([.fraction(3/7)])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
            .environmentObject(GameSettings())
    }
}
