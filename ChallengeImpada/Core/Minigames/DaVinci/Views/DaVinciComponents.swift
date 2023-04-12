//
//  DaVinciComponents.swift
//  ChallengeImpada
//
//  Created by lss8 on 29/03/23.
//

import SwiftUI
extension DaVinciView {
    var RedButtonComponent: some View {
        ZStack{
            VStack(spacing: 48.0) {
                Image("RedButton")
                Text("VERMELHO")
                    .foregroundColor(.red)
                    .bold()
            }
        }
    }
    
    var BlueButtonComponent: some View {
            ZStack{
                VStack(spacing: 48.0) {
                    Image("BlueButton")
                    Text("AZUL")
                        .foregroundColor(.blue)
                        .bold()
                }
            }
    }

    var YellowButtonComponent: some View {

            ZStack{
                VStack(spacing: 48.0) {
                    Image("YellowButton")
                    Text("AMARELO")
                        .foregroundColor(Color(UIColor.blend(color1: UIColor(.yellow), intensity1: 0.3, color2: UIColor(.orange), intensity2: 0.7)))
                        .bold()
                }
            }
    }

    var GreenButtonComponent: some View {
            ZStack{
                VStack(spacing: 48.0) {
                    Image("GreenButton")
                    Text("VERDE")
                        .foregroundColor(.green)
                        .bold()
                }
            }
    }

    var OrangeButtonComponent: some View {
            ZStack{
                VStack(spacing: 48.0) {
                    Image("OrangeButton")
                    Text("LARANJA")
                        .foregroundColor(.orange)
                        .bold()
                }
            }
    }

    var PurpleButtonComponent: some View {
            ZStack{
                VStack(spacing: 48.0) {
                    Image("PurpleButton")
                    Text("ROXO")
                        .foregroundColor(.purple)
                        .bold()
                }
            }
    }
    
    var goalColor: some View {
        ZStack{
            Image("WantedColor")
            Circle()
                .fill(Color(DaVinciVM.randomColor))
                .frame(width: 110, height: 110)
        }
    }
    
    var redoButton: some View {
        ZStack{
            Image(systemName: "x.circle")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 100, height: 100)
        }
    }
}

