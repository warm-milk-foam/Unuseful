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
                    Label("Saumil Says", systemImage: "person")
                }
            quoteView()
                .tabItem(){
                    Label("Quotes", systemImage: "person")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
