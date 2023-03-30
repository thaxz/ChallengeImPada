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
            Color.theme.primary
                .ignoresSafeArea()
            
            VStack(spacing: 16.0) {
                
                NavigationLink (destination: DaVinciView()) {
                    ZStack{
                        Rectangle()
                            .border(.white, width: 5)
                            .foregroundColor(.clear)
                        Text("Da Vinci ou da mais?")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .bold))
                    }
                    .frame(width: 360, height: 120)
                }
                NavigationLink (destination: NewtonView()) {
                    ZStack{
                        Rectangle()
                            .border(.white, width: 5)
                            .foregroundColor(.clear)
                        Text("Olha Maçuein")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .bold))
                    }
                    .frame(width: 360, height: 120)
                }
                NavigationLink (destination: TuringView()) {
                    ZStack{
                        Rectangle()
                            .border(.white, width: 5)
                            .foregroundColor(.clear)
                        Text("LGBTuring")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .bold))
                    }
                    .frame(width: 360, height: 120)
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
