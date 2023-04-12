//
//  EndGameView.swift
//  ChallengeImpada
//
//  Created by lss8 on 04/04/23.
//

import SwiftUI

struct EndGameView: View {
    var body: some View {
        NavigationLink (destination: LevelSelectionView()) {
            Image("EndGameView")
        }
    }
}

struct EndGameView_Previews: PreviewProvider {
    static var previews: some View {
        EndGameView()
    }
}
