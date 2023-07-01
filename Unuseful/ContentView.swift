//
//  ContentView.swift
//  Unuseful
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 3
    var body: some View {
        TabView(selection: $selection){
            photoView()
                .tabItem(){
                    Label("Pictures", systemImage: "photo")
                }.tag(1)
            starView()
                .tabItem(){
                    Label("Saumil Says", systemImage: "speaker.fill")
                }.tag(2)
            homeView()
                .tabItem(){
                    Label("Home", systemImage: "house.fill")
                }.tag(3)
            quoteView()
                .tabItem(){
                    Label("Quotes", systemImage: "text.bubble")
                }.tag(4)
            creditView()
                .tabItem(){
                    Label("Credits", systemImage: "text.word.spacing")
                }.tag(5)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
