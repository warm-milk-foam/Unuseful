//
//  ContentView.swift
//  Unuseful
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            photoView()
                .tabItem(){
                    Label("Pictures", systemImage: "photo")
                }
            starView()
                .tabItem(){
                    Label("Saumil Says", systemImage: "speaker.fill")
                }
            homeView()
                .tabItem(){
                    Label("Home", systemImage: "house.fill")
                }
            quoteView()
                .tabItem(){
                    Label("Quotes", systemImage: "text.bubble")
                }
            creditView()
                .tabItem(){
                    Label("Credits", systemImage: "text.word.spacing")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
