//
//  CharacterPortrait.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct CharacterPortrait: View {
    
    var image: String = ""
    var name: String = ""
    let character: Character
    
    init(character: Character) {
        self.character = character
        
        switch character.name {
        case "Leonardo da Vinci":
            image = "newtonPH"
            name = "Newton"
        case "Isaac Newton":
            image = "daVinciPH"
            name = "Da Vinci"
        case "Alan Turing":
            image = "turingPH"
            name = "Alan Turing"
        default:
            image = "arquisPH"
            name = "ARQUIS"
        }
    }
    
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
        CharacterPortrait(character: CharactersData().daVinci)
    }
}
