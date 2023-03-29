//
//  CharacterPortrait.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct CharacterPortrait: View {
    let image: String
    let name: String
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Image(image)
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.theme.secondary)
                Text(name)
                    .font(.system(size: 26, weight: .medium))
                    .foregroundColor(.white)
                    .padding(4)
                
            }
            .frame(width: 350, height: 60)
        }
    }
}

struct CharacterPortrait_Previews: PreviewProvider {
    static var previews: some View {
        CharacterPortrait(image: "CharacterPlaceHolder", name: "Newton")
    }
}
