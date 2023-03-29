//
//  NewtonView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct NewtonView: View {
    var body: some View {
        ZStack {
            Color.theme.primary
                .ignoresSafeArea()
            VStack {
                Text("Oi sou o Newton")
                    .foregroundColor(.white)
            }
        }
    }
}

struct NewtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewtonView()
    }
}
