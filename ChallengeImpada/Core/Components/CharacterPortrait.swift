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
            image = "daVinciPH"
            name = "Da Vinci"
        case "Isaac Newton":
            image = "newtonPotrait"
            name = "Newton"
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
                    .foregroundColor(Color.white)
                Text(name)
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.black)
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
