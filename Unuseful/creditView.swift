//
//  creditView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI

struct creditView: View {
    var body: some View {
        VStack{
            
            Text("Credits:💫")
                .bold()
                .font(.largeTitle)
            Group{
                Text("Photos Tab: Hongyu")
                    .font(.title2)
                Text("Photos from: The SAP community")
                    .offset(x: 0,y:3)
                 //Hongyu you  can add credits here
            }
            Group{
                Text("Saumil says: Thet Pai")
                    .font(.title2)
                    .offset(y:8)
                Text("Messages from: #bestof")
                    .offset(x: 0,y:15)
            }

            Group{
                Text("Home tab: Thet Pai")
                    .font(.title2)
                    .offset(x: 0,y:25)
                Text("Canon event template: The projecttian on YouTube")
                    .offset(x: 0,y:35)
                Text("Meme made by: Thet Pai")
                    .offset(x: 0,y:45)
            }
            Group{
                Text("Quotes tab: 🅱️🅾️ngo")
                    .font(.title2)
                    .offset(x: 0,y:60)
                Text("My epic meme storage has served me well")//Ingo you can add credits here
                    .offset(x: 0,y:69)
                
            }
            Text("Credits tab: Thet Pai and Ingo lol")
                .font(.title2)
                .offset(x: 0,y:80)
            Image("5")
                .resizable()
                .frame(width: 300, height: 300)
                .offset(x: 0,y:90)
            Text("💖kawaii💖")
                .foregroundColor(.pink)
                .offset(x: 100, y: -100)
            
            Text("😳")
                .font(.system(size:100))
                .rotationEffect(.degrees(340))
                .offset(x:-100,y: -240)
            Text("thwank you OwO :3🥰💖")
                .offset(x: 0, y: -20)
                .foregroundColor(.blue)
            // ingo didnt make this trust
        }
    }
}

struct creditView_Previews: PreviewProvider {
    static var previews: some View {
        creditView()
    }
}
