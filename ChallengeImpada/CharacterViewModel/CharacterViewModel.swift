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
    CharactersData().daVinci,
    CharactersData().newton,
    CharactersData().turing
]

