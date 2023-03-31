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
    
    let colors: [UIColor] = [
        (UIColor.blend(color1: UIColor(ciColor: .magenta), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(ciColor: .magenta), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(ciColor: .magenta), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.cyan), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.cyan), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.cyan), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.green), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.green), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5)),
        (UIColor.blend(color1: UIColor(.purple), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5))
    ]
    
    func magentaPress() {
        pressedButtomColor = UIColor(ciColor: .magenta)
        fillColor()
    }
    
    func cyanPress() {
        pressedButtomColor = UIColor(.cyan)
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
        mergedColor = UIColor.blend(color1: firstColor, intensity1: 0.5, color2: secondColor, intensity2: 0.5)
        print(mergedColor.hash)
    }
    
    func makeRandomColor() {
        let randomIndex = Int.random(in: 0..<12)
        
        randomColor = colors[randomIndex]
        
    }
    
    func compareColors(){
        var hashMerged: Int = mergedColor.hash
        var hashRandom: Int = randomColor.hash
        
        
        if (firstColor.hash != 65536) && (secondColor.hash != 65536) {
            if hashMerged == hashRandom {
                print("############MEU DEUS ")
            } else {
                print("FRACASSO######")
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

