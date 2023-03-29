//
//  TuringView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct TuringView: View {
    var body: some View {
        ZStack {
            Color.theme.primary
                .ignoresSafeArea()
            VStack {
                Text("Oi sou o Turing")
                    .foregroundColor(.white)
            }
        }
    }
}

struct TuringView_Previews: PreviewProvider {
    static var previews: some View {
        TuringView()
    }
}
