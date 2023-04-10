//
//  SkipButton.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct SkipButton: View {
    
    var body: some View {
        NavigationLink (destination: LevelSelectionView()) {
            ZStack{
                Rectangle()
                    .border(.white, width: 5)
                    .foregroundColor(.clear)
                Text("PULAR")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 140 ,height: 64)
        }
    }
}

struct SkipButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            SkipButton()
        }
    }
}
