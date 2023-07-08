//
//  UnusefulApp.swift
//  Unuseful
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

@main
struct UnusefulApp: App {
    @StateObject private var settings = GameSettings()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
        }
    }
}
