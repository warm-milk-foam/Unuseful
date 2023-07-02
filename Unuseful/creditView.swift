//
//  creditView.swift
//  Unuseful
//
//  Created by T Krobot on 30/6/23.
//

import SwiftUI

struct creditView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.blue, .purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
                )
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text("Credits:💫")
                    .bold()
                    .font(.largeTitle)
                Group{
                    Text("Photos Tab: Hongyu")
                        .font(.title2)
                    Text("Photos from: The SAP community")
                        .offset(x: 0,y:0)
                    //Hongyu you  can add credits here
                }
                Group{
                    Text("Saumil says: Thet Pai")
                        .font(.title2)
                        .offset(y:0)
                    Text("Messages from: #bestof")
                        .offset(x: 0,y:0)
                }

                Group{
                    Text("Home tab: Thet Pai")
                        .font(.title2)
                        .offset(x: 0,y:0)
                    Text("Canon event template: The projecttian on YouTube")
                        .offset(x: 0,y:0)
                    Text("Meme made by: Thet Pai")
                        .offset(x: 0,y:0)
                }
                Group{
                    Text("Quotes tab: 🅱️🅾️ngo")
                        .font(.title2)
                        .offset(x: 0,y:0)
                    Text("My epic meme storage has served me well")//Ingo you can add credits here
                        .offset(x: 0,y:0)
                    
                }
                Text("Credits tab: Thet Pai and Ingo lol")
                    .font(.title2)
                    .offset(x: 0,y:0)
                Image("5")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .offset(x: 0,y:0)
                    .cornerRadius(500)
                
                Text("thwank you OwO :3🥰💖")
                    .offset(x: 0, y: 0)
                    .foregroundColor(.cyan)
                

            }

        }
    }
}


struct creditView_Previews: PreviewProvider {
    static var previews: some View {
        creditView()
    }
}
