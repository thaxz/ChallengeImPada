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
    
    @Published var randomText: PossibleColors = .none
    let colors: [(color: UIColor, name: PossibleColors)] = [
        (UIColor.blend(color1: UIColor(ciColor: .magenta), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5), .MG),
        (UIColor.blend(color1: UIColor(ciColor: .magenta), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5), .MP),
        (UIColor.blend(color1: UIColor(ciColor: .magenta), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5), .MO),
        (UIColor.blend(color1: UIColor(.cyan), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5), .CG),
        (UIColor.blend(color1: UIColor(.cyan), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5), .CP),
        (UIColor.blend(color1: UIColor(.cyan), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5), .CO),
        (UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.green), intensity2: 0.5), .YG),
        (UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5), .YG),
        (UIColor.blend(color1: UIColor(.yellow), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5), .YO),
        (UIColor.blend(color1: UIColor(.green), intensity1: 0.5, color2: UIColor(.purple), intensity2: 0.5), .GP),
        (UIColor.blend(color1: UIColor(.green), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5), .GO),
        (UIColor.blend(color1: UIColor(.purple), intensity1: 0.5, color2: UIColor(.orange), intensity2: 0.5), .PO)
    ]
    
    func magentaPress() {
        firstColor = UIColor(ciColor: .magenta)
    }
    
    func cyanPress() {
        firstColor = UIColor(.cyan)
    }
    
    func yellowPress() {
        firstColor = UIColor(.yellow)
    }
    
    func greenPress() {
        secondColor = UIColor(.green)
    }
    
    func purplePress() {
        secondColor = UIColor(.purple)
    }
    
    func orangePress() {
        secondColor = UIColor(.orange)
    }
    
    func merge() -> UIColor {
        mergedColor = UIColor.blend(color1: firstColor, intensity1: 0.5, color2: secondColor, intensity2: 0.5)
        print(mergedColor.hash)
        return mergedColor
    }
    
    func makeRandomColor() -> (UIColor, PossibleColors) {
        let randomIndex = Int.random(in: 0..<12)
        
        randomColor = colors[randomIndex].color
        randomText = colors[randomIndex].name
        
        return (randomColor, randomText)
    }
    
    func compareColors(){
        var hashMerged: Int = mergedColor.hash
        var hashRandom: Int = randomColor.hash
        
        if hashMerged == hashRandom {
            print("############MEU DEUS ")
        } else {
            print("FRACASSO######")
        }
        
    }
    
}

