//
//  DaVinciViewModel.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import Foundation
import SwiftUI

class DaVinciViewModel: ObservableObject {
    @Published var firstColor = UIColor(.black)
    @Published var secondColor = UIColor(.black)
    @Published var mergedColor = UIColor(.black)
    @Published var randomColor = UIColor(.black)
    @Published var pressedButtomColor = UIColor(.black)
    
    @Published var tutorialPopUp = true
    @Published var secondStage = false
    @Published var switchStagePopUp = false
    @Published var endGamePopUp = false
    @Published var gameEnded = false
    
    @Published var colorCounter2 = 0
    @Published var colorCounter3 = 0
    
    var secondColors: [(cor: UIColor, appeared: Bool)] = [
        (UIColor(.purple), false),
        (UIColor(.green), false),
        (UIColor(.orange), false)
    ]
    
    var thirdColors: [(cor: UIColor, appeared: Bool)] = [
        ((UIColor.blend(color1: UIColor(.red), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5)), false),
        ((UIColor.blend(color1: UIColor(.red), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5)), false),
        ((UIColor.blend(color1: UIColor(.blue), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5)), false),
        ((UIColor.blend(color1: UIColor(.blue), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5)), false),
        ((UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5)), false),
        ((UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5)), false)
    ]
    
    func redPress() {
        pressedButtomColor = UIColor(.red)
        fillColor()
    }
    
    func bluePress() {
        pressedButtomColor = UIColor(.blue)
        fillColor()
    }
    
    func yellowPress() {
        pressedButtomColor = UIColor(.yellow)
        fillColor()
    }
    
    func greenPress() {
        pressedButtomColor = UIColor(.green)
        fillColor()
    }
    
    func purplePress() {
        pressedButtomColor = UIColor(.purple)
        fillColor()
    }
    
    func orangePress() {
        pressedButtomColor = UIColor(.orange)
        fillColor()
    }
    
    func merge() {
        if (firstColor.hash == UIColor(.blue).hash) && (secondColor.hash == UIColor(.yellow).hash) || (firstColor.hash == UIColor(.yellow).hash) && (secondColor.hash == UIColor(.blue).hash) {
            mergedColor = UIColor(.green)
        }
        else if (firstColor.hash == UIColor(.blue).hash) && (secondColor.hash == UIColor(.red).hash) || (firstColor.hash == UIColor(.red).hash) && (secondColor.hash == UIColor(.blue).hash) {
            mergedColor = UIColor(.purple)
        }
        else if (firstColor.hash == UIColor(.red).hash) && (secondColor.hash == UIColor(.yellow).hash) || (firstColor.hash == UIColor(.yellow).hash) && (secondColor.hash == UIColor(.red).hash) {
            mergedColor = UIColor(.orange)
        }
        else {
            mergedColor = UIColor.blend(color1: firstColor, intensity1: 0.5, color2: secondColor, intensity2: 0.5)
        }
    }
    
    func randSecondColors(randomIndex: Int) {
        if !secondColors[randomIndex].appeared {
            randomColor = secondColors[randomIndex].cor
            secondColors[randomIndex].appeared.toggle()
        }
        else {
            randSecondColors(randomIndex: Int.random(in: 0..<3))
        }
    }
    
    func randThirdColors(randomIndex: Int) {
        if !thirdColors[randomIndex].appeared {
            randomColor = thirdColors[randomIndex].cor
            thirdColors[randomIndex].appeared.toggle()
        }
        else {
            randThirdColors(randomIndex: Int.random(in: 0..<6))
        }
    }
    
    func makeRandomColor() {
        if (colorCounter3 < 6) {
            if !secondStage {
                randSecondColors(randomIndex: Int.random(in: 0..<3))
            }
            else {
                randThirdColors(randomIndex: Int.random(in: 0..<6))
            }
        }
    }
    
    func compareColors(){
        let hashMerged: Int = mergedColor.hash
        let hashRandom: Int = randomColor.hash
        
        
        if (firstColor.hash != 65536) && (secondColor.hash != 65536) {
            if hashMerged == hashRandom {
                if !secondStage {
                    colorCounter2 += 1
                    if colorCounter2 == 3 {
                        withAnimation {
                            secondStage.toggle()
                        }
                        switchStagePopUp.toggle()
                    }
                } else {
                    colorCounter3 += 1
                    if colorCounter3 == 6 {
                        endGamePopUp.toggle()
                        gameEnded.toggle()
                        print(gameEnded)
                    }
                }
                makeRandomColor()
                print("Sucesso")
            } else {
                print("Fracasso")
            }
        } else {
            print("Selecione uma cor")
        }
    }
    
    func fillColor() {
        if firstColor.hash == 65536 {
            firstColor = pressedButtomColor
        } else {
            secondColor = pressedButtomColor
        }
    }
    
    func removeFirstColor() {
        firstColor = UIColor(.black)
    }
    
    func removeSecondColor() {
        secondColor = UIColor(.black)
    }
    
}

