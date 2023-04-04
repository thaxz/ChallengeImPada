//
//  NewtonView.swift
//  ChallengeImpada
//
//  Created by thaxz on 04/04/23.
//

import SwiftUI
import SpriteKit

struct NewtonView: View {
    @StateObject private var game = NewtonScene()
    var body: some View {
        ZStack {
            HStack {
                SpriteView(scene: NewtonScene2())
                    .ignoresSafeArea()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}

struct NewtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewtonView()
    }
}
