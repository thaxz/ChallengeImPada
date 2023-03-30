//
//  CharacterDetailsData.swift
//  ChallengeImpada
//
//  Created by gabrielfelipo on 30/03/23.
//

import Foundation

struct CharacterDetailsData {
    let newtonDetails: Character = Character(
        name: "Isaac Newton",
        image3D: "spongecharacter.scn",
        imagePotrait: "",
        about: "Cientista chefe sobre o estudo da Gravidade em UFPE. Toda ação gera uma reação de igual intensidade mas sentido oposto, então não mexe comigo 😉",
        nationality: "Britânico",
        job: "Cientista",
        invention: "Gravidade")
    
    let daVinciDetails: Character = Character(
        name: "Leonardo Da Vinci",
        image3D: "spongecharacter.scn",
        imagePotrait: "",
        about: "Sim, se eu pagar alguma coisa eu sempre vou Da Vinci, haha mutio engraçado e original a sua piada. Nunca ouvi antes.",
        nationality: "Italiano",
        job: "Inventor",
        invention: "Mona Lisa")
    
    let turingDetails: Character = Character(
        name: "Allan Turing",
        image3D: "spongecharacter.scn",
        imagePotrait: "",
        about: "Ateu, homossexual e pai da ciência da computação 🏳️‍🌈",
        nationality: "Britânico",
        job: "Cientista",
        invention: "Computador")
}
