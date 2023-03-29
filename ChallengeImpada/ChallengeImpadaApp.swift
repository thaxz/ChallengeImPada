//
//  ChallengeImpadaApp.swift
//  ChallengeImpada
//
//  Created by thaxz on 20/03/23.
//

import SwiftUI

@main
struct ChallengeImpadaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
