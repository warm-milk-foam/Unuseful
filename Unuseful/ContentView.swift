//
//  ContentView.swift
//  Unuseful
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 3
    @State private var yLo = -80
    var body: some View {
        VStack{
            
                
            TabView(selection: $selection){
                photoView()
                    .offset(y: CGFloat(yLo))
                    .tabItem(){
                        Label("Pictures", systemImage: "photo")
                    }.tag(1)
                starView()
                    .offset(y: -30)
                    .tabItem(){
                        Label("Saumil Says", systemImage: "speaker.wave.2.circle")
                    }.tag(2)
                homeView()
                    .offset(y: CGFloat(yLo))
                    .tabItem(){
                        Label("Home", systemImage: "house.fill")
                    }.tag(3)
                quoteView()
                    .offset(y: -70)
                    .tabItem(){
                        Label("Quotes", systemImage: "text.bubble")
                    }.tag(4)
                creditView()
                    .offset(y: 0)
                    .tabItem(){
                        Label("Credits", systemImage: "text.word.spacing")
                    }.tag(5)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
