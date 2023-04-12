//
//  LevelSelectionView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct LevelSelectionView: View {
    var body: some View {
        ZStack {
            Image("gradient")
                .resizable()
                .ignoresSafeArea()
            HStack(spacing: 40) {
                
                NavigationLink (destination: DialogueView(scene: Data().daVinciOnboardingScene)) {
                   
                       LevelContainer(image: "davinciLevel", text: "Da Vinci")
                    
                }
                NavigationLink (destination: DialogueView(scene: Data().newtonOnboardingScene)) {
                    
                        LevelContainer(image: "newtonLevel", text: "Isaac Newton")
                    
                    
                }
                NavigationLink (destination: DialogueView(scene: Data().turingOnboardingScene)) {
                    
                        LevelContainer(image: "turingLevel", text: "Alan Turing")
                    
                }
            }
        }
    }
}

struct LevelSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectionView()
    }
}
