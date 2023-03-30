//
//  CharacterViewModel.swift
//  ChallengeImpada
//
//  Created by Cynara Costa on 29/03/23.
//

import Foundation
import SwiftUI

class CharacterViewModel: ObservableObject {

    @Published var characters: [Character] = []

    init() {
        addCharacters()
    }

    func addCharacters() {
        characters = charactersData
    }

}

let charactersData = [
    Character(
        name: "Isaac Newton",
        image3D: "spongecharacter.scn",
        imagePortrait: Image.theme.newton,
        about: "Cientista chefe sobre o estudo da Gravidade em UFPE. Toda ação gera uma reação de igual intensidade mas sentido oposto, então não mexe comigo 😉",
        nationality: "Britânico",
        job: "Cientista",
        invention: "Gravidade"),
    
    Character(
        name: "Leonardo Da Vinci",
        image3D: "spongecharacter.scn",
        imagePortrait: Image.theme.davinci,
        about: "Sim, se eu pagar alguma coisa eu sempre vou Da Vinci, haha mutio engraçado e original a sua piada. Nunca ouvi antes.",
        nationality: "Italiano",
        job: "Inventor",
        invention: "Mona Lisa"),
    
    Character(
        name: "Allan Turing",
        image3D: "spongecharacter.scn",
        imagePortrait: Image.theme.turing,
        about: "Ateu, homossexual e pai da ciência da computação 🏳️‍🌈",
        nationality: "Britânico",
        job: "Cientista",
        invention: "Computador")
]
