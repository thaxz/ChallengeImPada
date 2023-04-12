//
//  LevelContainer.swift
//  ChallengeImpada
//
//  Created by thaxz on 12/04/23.
//

import SwiftUI

struct LevelContainer: View {
    let image: String
    let text: String
    var body: some View {
        VStack(spacing: 20){
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    //.border(.white, width: 8)
                    .foregroundColor(.clear)
                    .background(
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white, lineWidth: 8)
                                .background(Material.thin.opacity(0.20))
                            Image(image)
                                .resizable()
                                .frame(width: 300, height: 300)
                        }
                    )
            }
            .frame(width: 300, height: 300)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold))
        }
    }
}

struct LevelContainer_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Image("gradient")
            LevelContainer(image: "turingLevel", text: "Alan Turing")
        }
    }
}
