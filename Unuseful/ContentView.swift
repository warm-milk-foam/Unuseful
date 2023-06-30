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
                    Label("Pictures", systemImage: "person")
                }
            starView()
                .tabItem(){
                    Label("Saumil Says", systemImage: "speaker.fill")
                }
            homeView()
                .tabItem(){
                    Label("Home", systemImage: "person")
                }
            quoteView()
                .tabItem(){
                    Label("Quotes", systemImage: "person")
                }
            creditView()
                .tabItem(){
                    Label("Credits", systemImage: "person")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
