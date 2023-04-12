//
//  DialogueContainer.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct DialogueContainer: View {
    
    let text: String
    
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
            HStack {
                Text(text)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(.black)
                    .padding(24)
            }
            .frame(height: 180, alignment: .topLeading)
            .multilineTextAlignment(.leading)
        }
        .overlay(
            Image(systemName: "triangle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .rotationEffect(Angle(degrees: 90))
                .foregroundColor(.white)
                .padding(.trailing)
            ,alignment: .trailing
        )
        .frame(height: 180)
    }
}

struct DialogueContainer_Previews: PreviewProvider {
    static var previews: some View {
        DialogueContainer(text: "Eu sou um diálogo")
    }
}
