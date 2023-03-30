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
    Character(name: "Newton", image3D: "newton3d.usd", imagePortrait: Image.theme.newton),
    Character(name: "Leonardo Da Vinci", image3D: "davinci3d.usd", imagePortrait: Image.theme.davinci),
    Character(name: "Turing", image3D: "turing3d.usd", imagePortrait: Image.theme.turing),
]
