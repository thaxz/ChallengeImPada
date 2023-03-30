//
//  DaVinciComponents.swift
//  ChallengeImpada
//
//  Created by lss8 on 29/03/23.
//

import SwiftUI
extension DaVinciView {
    var MagentaButtonComponent: some View {
        ZStack{
            Rectangle()
                .border(Color(UIColor(ciColor: .magenta)), width: 5)
                .foregroundColor(.clear)
            Text("Magenta")
                .foregroundColor(Color(UIColor(ciColor: .magenta)))
                .font(.system(size: 28, weight: .bold))
        }
        .frame(width: 140 ,height: 64)
    }
    
    var CyanButtonComponent: some View {
            ZStack{
                Rectangle()
                    .border(.cyan, width: 5)
                    .foregroundColor(.clear)
                Text("Azul")
                    .foregroundColor(.cyan)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 140 ,height: 64)
    }

    var YellowButtonComponent: some View {

            ZStack{
                Rectangle()
                    .border(.yellow, width: 5)
                    .foregroundColor(.clear)
                Text("Amarelo")
                    .foregroundColor(.yellow)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 140 ,height: 64)
    }

    var GreenButtonComponent: some View {
            ZStack{
                Rectangle()
                    .border(.green, width: 5)
                    .foregroundColor(.clear)
                Text("Verde")
                    .foregroundColor(.green)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 140 ,height: 64)
    }

    var OrangeButtonComponent: some View {
            ZStack{
                Rectangle()
                    .border(.orange, width: 5)
                    .foregroundColor(.clear)
                Text("Laranja")
                    .foregroundColor(.orange)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 140 ,height: 64)
    }

    var PurpleButtonComponent: some View {
            ZStack{
                Rectangle()
                    .border(.purple, width: 5)
                    .foregroundColor(.clear)
                Text("Roxo")
                    .foregroundColor(.purple)
                    .font(.system(size: 28, weight: .bold))
            }
            .frame(width: 140 ,height: 64)
    }
    
    var mergeButtonComponent: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(DaVinciVM.mergedColor))
            Text("Merge")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .bold))
        }
        .frame(width: 140 ,height: 64)
    }
    
    var circleColor1: some View {
        ZStack{
            Circle()
                .fill(Color(DaVinciVM.firstColor))
                .frame(width: 100, height: 100)
        }
    }
    
    var circleColor2: some View {
        ZStack{
            Circle()
                .fill(Color(DaVinciVM.secondColor))
                .frame(width: 100, height: 100)
        }
    }
    
    var goalColor: some View {
        ZStack{
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color(DaVinciVM.randomColor))
            //Text(DaVinciVM.randomText.rawValue)
                //.foregroundColor(.black)
        }
    }
    
    var redoButton: some View {
        ZStack{
            Image(systemName: "x.circle")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 50, height: 50)
        }
    }
}

