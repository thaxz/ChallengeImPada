//
//  NewtonView.swift
//  ChallengeImpada
//
//  Created by thaxz on 04/04/23.
//

import SwiftUI
import SpriteKit

struct NewtonView: View {
    
    @StateObject private var game: NewtonScene
    
    init(){
        _game = StateObject(wrappedValue: NewtonScene())
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: NewtonScene())
                        .ignoresSafeArea()
            if game.isGameOver {
                Color.pink
            }

        }
        
    }
}

struct NewtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewtonView()
    }
}
