//
//  MuseuViewComponents.swift
//  ChallengeImpada
//
//  Created by Cynara Costa on 30/03/23.
//

import SwiftUI

extension MuseuView {
    var carouselBody: some View {
        GeometryReader { reader in
            let screenSize = reader.size
            ZStack {
                ScrollView(.horizontal) {
                    HStack (spacing: 180) {
                        ForEach(charactersViewModel.characters) { character in
                            GeometryReader { otherReader in
                                    
                                let midX = otherReader.frame(in: .global).midX
                                let distance = abs(screenSize.width / 2 - midX )
                                let damping: CGFloat = 2
                                let percentage = abs(distance / (screenSize.width / 2) / damping - 1)

                                VStack (alignment: .center) {
                                    Text(character.name)
                                        .foregroundColor(Color.theme.accent)
                                        .font(.system(size: 42, weight: .bold))
                                    
                                    Image.theme.arrowDown
                                    
                                    character.imagePortrait
                                        .scaledToFill()
                                        .frame(width: screenSize.width / 3,
                                               height: screenSize.height / 2)
                                    
                                    Text("ver perfil")
                                        .foregroundColor(Color.theme.accent)
                                        .font(.system(size: 24, weight: .regular))
                                        .underline(true, color: Color.theme.accent)
                                }
                                
                                .frame(width: screenSize.width/3)
                                .frame(maxHeight: .infinity)
                                .scaleEffect(percentage)
                            }
                            .frame(width: screenSize.width/3)
                            .frame(maxHeight: .infinity)
                            
                        }
                        
                    }
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.theme.primary)
        }
    }
}
