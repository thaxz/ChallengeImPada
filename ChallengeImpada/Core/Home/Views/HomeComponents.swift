//
//  HomeComponents.swift
//  ChallengeImpada
//
//  Created by Cynara Costa on 28/03/23.
//

import SwiftUI

extension HomeView {
    var homeBody: some View {
        VStack (spacing: 64) {
            VStack (spacing: 80) {
                
                Text("ARQUIS")
                    .frame(width: UIScreen.main.bounds.width * 0.43, height: UIScreen.main.bounds.height * 0.2)
                    .font(.system(size: 100, weight: .bold))
                    .foregroundColor(Color.theme.accent)
                
                NavigationLink(destination: DialogueView(scene: Data().onboardingScene)) {
                        Image("playButton")
                }
                                
                NavigationLink(destination: MuseuView()) {
                        Text("Museu")
                            .foregroundColor(Color.theme.primary)
                            .font(.system(size: 50, weight: .bold))
                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.09)
                            .background(Color.theme.accent)
                            .cornerRadius(6)
                    }
            }
            
            HStack {
                
                NavigationLink(destination: CreditsView()) {
                    Text("Créditos")
                        .foregroundColor(Color.theme.accent)
                        .font(.system(size: 50, weight: .bold))
                        .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.09)
                        .overlay(
                            RoundedRectangle(cornerRadius: 32)
                                .stroke(Color.theme.accent, lineWidth: 5)
                        )
                }
                Spacer()
            }
            .padding(.leading, 48)
            
        }
    }
}
