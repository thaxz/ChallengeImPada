//
//  NewtonView.swift
//  ChallengeImpada
//
//  Created by thaxz on 04/04/23.
//

import SwiftUI
import SpriteKit

struct NewtonView: View {
    @StateObject private var game = NewtonScene2()
    var body: some View {
        ZStack {
            HStack {
                SpriteView(scene: NewtonScene())
                    .ignoresSafeArea()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            
            if game.isGameOver {
                NavigationLink {
                    EmptyView()
                } label: {
                    Text("Back")
                        .font(.system(size: 32, weight: .medium))
                        .foregroundColor(.black)
                }
                .offset(y: 100)
            }
            Text("Score: \(game.score)")
                .font(.system(size: 32, weight: .medium))
                .foregroundColor(.black)
                .offset(y: -150)
            Spacer()
            
        }
        .ignoresSafeArea()
    }
}

struct NewtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewtonView()
    }
}
