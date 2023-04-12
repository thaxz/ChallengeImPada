//
//  NewtonGameOver.swift
//  ChallengeImpada
//
//  Created by thaxz on 11/04/23.
//

import SwiftUI

struct NewtonGameOver: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.black)
            VStack{
                Text("PERDEU PERDEU")
            }
        }
    }
}

struct NewtonGameOver_Previews: PreviewProvider {
    static var previews: some View {
        NewtonGameOver()
    }
}
