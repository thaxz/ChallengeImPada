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
                SpriteView(scene: NewtonScene())
                    .ignoresSafeArea()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            
        }
    }
}

struct NewtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewtonView()
    }
}
