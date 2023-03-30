//
//  CharacterDetailsComponentsView.swift
//  ChallengeImpada
//
//  Created by gabrielfelipo on 29/03/23.
//

import SwiftUI

extension CharacterDetailsView{
    
    var characterData: some View {
        VStack{
            HStack{
                Text("Nacionalidade:")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
                Spacer()
                Text(character.nationality)
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
            }
            HStack{
                Text("Profissão:")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
                Spacer()
                Text(character.job)
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
            }
            HStack{
                Text("Famoso por:")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
                Spacer()
                Text(character.invention)
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
            }
        }
    }
    
    var characterInformations: some View {
        VStack{
            HStack{
                Text("Sobre")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold))
                Spacer()
            }
            
            Spacer().frame(height: 32)
            
            HStack{
                Text(character.about)
                    .foregroundColor(.white)
                    .font(.system(size: 24,weight: .regular))
                
                Spacer()
            }
            
            Spacer().frame(height: 32)
            
            characterData
            
        }
    }
    
    var navigationButtons: some View {
        VStack{
            NavigationLink(destination: HomeView()) {
                    Text("Menu")
                        .foregroundColor(Color.theme.primary)
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 140, height: 48)
                        .background(Color.theme.accent)
                        .cornerRadius(6)
            }
            
            Spacer().frame(height: 14)
            
            NavigationLink(destination: MuseuView()) {
                    Text("Voltar")
                        .foregroundColor(Color.theme.primary)
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 140, height: 48)
                        .background(Color.theme.accent)
                        .cornerRadius(6)
            }
            
        }
    }
}

struct CharacterDetailsComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailsView(character: CharacterDetailsData().newtonDetails)
    }
}
