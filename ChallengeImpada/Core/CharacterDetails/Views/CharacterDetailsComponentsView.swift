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
                Text("Britânico")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
            }
            HStack{
                Text("Profissão:")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
                Spacer()
                Text("Cientista")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
            }
            HStack{
                Text("Famoso por:")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .bold))
                Spacer()
                Text("Gravidade")
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
                Text("Cientista chefe sobre o estudo da Gravidade em UFPE. Toda ação gera uma reação de igual intensidade mas sentido oposto, então não mexe comigo 😉")
                    .foregroundColor(.white)
                    .font(.system(size: 24,weight: .regular))
                
                Spacer()
            }
            
            Spacer().frame(height: 32)
            
            characterData
            
        }
    }
}

struct CharacterDetailsComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailsView()
    }
}
