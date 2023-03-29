//
//  CreditsView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        ZStack {
            Color.theme.primary
                .ignoresSafeArea()
            VStack(spacing: 24.0) {
                Text("Cynara Valéria")
                    .foregroundColor(.white)
                Text("Daniel Monterazzo")
                    .foregroundColor(.white)
                Text("Gabriel Felipo")
                    .foregroundColor(.white)
                Text("Lucas Souza")
                    .foregroundColor(.white)
                Text("Thaís Monteiro")
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
