//
//  Image.swift
//  ChallengeImpada
//
//  Created by Cynara Costa on 29/03/23.
//

import Foundation
import SwiftUI

extension Image {
    static let theme = ImageTheme2D()
    static let bg = ImageBG()
}

struct ImageTheme2D {
    
    let newton = Image("newton2d")
    let davinci = Image("davinci2d")
    let turing = Image("turing2d")
    let arrowDown = Image("arrowDown")
    let circleButton = Image("circleButton")
    let squareButton = Image("squareButton")
    let starButton = Image("starButton")
    let triangleButton = Image("triangleButton")
    let redSymbol = Image("redSymbol")
    let greenSymbol = Image("greenSymbol")
    let blueSymbol = Image("blueSymbol")
    let yellowSymbol = Image("yellowSymbol")
    let telephone = Image("telephone")
    
}

struct ImageBG {
    let red3 = Image("RedBackground3")
    let blue3 = Image("BlueBackground3")
    let yellow3 = Image("YellowBackground3")
    let green3 = Image("GreenBackground3")
    let purple3 = Image("PurpleBackground3")
    let orange3 = Image("OrangeBackground3")
    let neutral3 = Image("NeutralBackground3")
    
    let green = Image("GreenBackground")
    let purple = Image("PurpleBackground")
    let orange = Image("OrangeBackground")
    let red = Image("RedBackground")
    let blue = Image("BlueBackground")
    let yellow = Image("YellowBackground")
    let neutral = Image("NeutralBackground")
    
    let yellowOrange = Image("Yellow+OrangeBackground")
    let yellowGreen = Image("Green+YellowBackground")
    let bluePurple = Image("Blue+PurpleBackground")
    let blueGreen = Image("Blue+GreenBackground")
    let redOrange = Image("Red+OrangeBackground")
    let redPurple = Image("Red+PurpleBackground")
    
    let yellowPurple = Image("Yellow+PurpleBackground")
    let blueOrange = Image("Blue+OrangeBackground")
    let redGreen = Image("Red+GreenBackground")
    
    let greenPurple = Image("Green+PurpleBackground")
    let greenOrange = Image("Green+OrangeBackground")
    let orangePurple = Image("Orange+PurpleBackground")
}


