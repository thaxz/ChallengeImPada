//
//  CharactersData.swift
//  ChallengeImpada
//
//  Created by lss8 on 10/04/23.
//

import Foundation
import SwiftUI

struct CharactersData {
    let arquis: Character = Character(
        name: "Arquis",
        image3D: "",
        imagePortrait: Image.theme.davinci,
        about: "",
        nationality: "",
        job: "",
        invention: "")
    
    let daVinci: Character = Character(
        name: "Leonardo da Vinci",
        image3D: "spongecharacter.scn",
        imagePortrait: Image.theme.davinci,
        about: "Leonardo di Ser Piero da Vinci, ou simplesmente Leonardo da Vinci, foi um polímata nascido na atual Itália, uma das figuras mais importantes do Alto Renascimento, que se destacou como cientista, matemático, engenheiro, inventor, anatomista, pintor, escultor, arquiteto, botânico, poeta e músico.",
        nationality: "Italiano",
        job: "Pintor",
        invention: "Mona Lisa")
    
    let newton: Character = Character(
        name: "Isaac Newton",
        image3D: "spongecharacter.scn",
        imagePortrait: Image.theme.newton,
        about: "Isaac Newton PRS foi um matemático, físico, astrônomo, teólogo e autor inglês que é amplamente reconhecido como um dos cientistas mais influentes de todos os tempos e como uma figura-chave na Revolução Científica.",
        nationality: "Britânico",
        job: "Físico",
        invention: "Gravidade")
    
    let turing: Character = Character(
        name: "Alan Turing",
        image3D: "spongecharacter.scn",
        imagePortrait: Image.theme.turing,
        about: "Alan Mathison Turing foi um matemático, cientista da computação, lógico, criptoanalista, filósofo e biólogo teórico britânico.",
        nationality: "Britânico",
        job: "Cientista da Computação",
        invention: "Computador")
}
