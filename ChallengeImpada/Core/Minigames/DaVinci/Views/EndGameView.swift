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
            ZStack{
                Rectangle()
                    .border(.black, width: 5)
                    .foregroundColor(.black)
                Text("Venceu parça")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 360, height: 120)
        }
    }
}

struct EndGameView_Previews: PreviewProvider {
    static var previews: some View {
        EndGameView()
    }
}
