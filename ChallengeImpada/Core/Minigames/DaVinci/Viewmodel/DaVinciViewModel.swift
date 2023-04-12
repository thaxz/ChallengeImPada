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
    @Published var backToSelection = false
    
    @Published var colorCounter2 = 0
    @Published var colorCounter3 = 0
    
    @Published var bgImage = ImageBG().neutral3
    
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
        compareColors()
        removeColors()
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
                }
            }
            makeRandomColor()
            print("Sucesso")
        } else {
            print("Fracasso")
        }
    }
    
    func fillColor() {
        if firstColor.hash == 65536 {
            firstColor = pressedButtomColor
        } else {
            secondColor = pressedButtomColor
        }
        if secondColor.hash != 65536 {
            merge()
            changeBG(hash: mergedColor.hash)
        } else {
            changeBG(hash: firstColor.hash)
        }
    }
    
    func removeColors() {
        firstColor = UIColor(.black)
        secondColor = UIColor(.black)
    }
    
    func changeBG(hash: Int) {
        switch hash {
        case UIColor(.red).hash, 146768846:
            if secondStage {
                bgImage = ImageBG().red
            }
            else {
                bgImage = ImageBG().red3
            }
        case UIColor(.blue).hash, 6216317:
            if secondStage {
                bgImage = ImageBG().blue
            }
            else {
                bgImage = ImageBG().blue3
            }
        case UIColor(.yellow).hash, 152906263:
            if secondStage {
                bgImage = ImageBG().yellow
            }
            else {
                bgImage = ImageBG().yellow3
            }
        case UIColor(.green).hash, 38366760, 105553176698896:
            if secondStage {
                bgImage = ImageBG().green
            }
            else {
                bgImage = ImageBG().green3
            }
        case UIColor(.purple).hash, 103178819, 105553176698848:
            if secondStage {
                bgImage = ImageBG().purple
            }
            else {
                bgImage = ImageBG().purple3
            }
        case UIColor(.orange).hash, 150517448, 105553176698944:
            if secondStage {
                bgImage = ImageBG().orange
            }
            else {
                bgImage = ImageBG().orange3
            }
        case 124973748:
            bgImage = ImageBG().redPurple
        case 148643147:
            bgImage = ImageBG().redOrange
        case 22291623:
            bgImage = ImageBG().blueGreen
        case 54696476:
            bgImage = ImageBG().bluePurple
        case 95637688:
            bgImage = ImageBG().yellowGreen
        case 151711940:
            bgImage = ImageBG().yellowOrange
        case 92568895:
            bgImage = ImageBG().redGreen
        case 78365862:
            bgImage = ImageBG().blueGreen
        case 128042541:
            bgImage = ImageBG().yellowPurple
        case 70771782:
            bgImage = ImageBG().greenPurple
        case 94443196:
            bgImage = ImageBG().greenOrange
        case 126848049:
            bgImage = ImageBG().orangePurple
        default:
            if secondStage {
                bgImage = ImageBG().neutral
            }
            else {
                bgImage = ImageBG().neutral3
            }
        }
    }
}

