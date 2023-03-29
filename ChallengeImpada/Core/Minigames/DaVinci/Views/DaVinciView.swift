//
//  DaVinciView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct DaVinciView: View {
    var body: some View {
        ZStack {
            Color.theme.primary
                .ignoresSafeArea()
            VStack {
                Text("Oi sou o Da Vinci")
                    .foregroundColor(.white)
            }
        }
    }
}

struct DaVinciView_Previews: PreviewProvider {
    static var previews: some View {
        DaVinciView()
    }
}
