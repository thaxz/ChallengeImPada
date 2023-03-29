//
//  MuseuView.swift
//  ChallengeImpada
//
//  Created by lss8 on 29/03/23.
//

import SwiftUI

struct MuseuView: View {
    var body: some View {
        ZStack {
            Color.theme.primary
                .ignoresSafeArea()
            VStack {
                Text("Oi isso é um Museu")
                    .foregroundColor(.white)
            }
        }
    }
}

struct MuseuView_Previews: PreviewProvider {
    static var previews: some View {
        MuseuView()
    }
}
