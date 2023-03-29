//
//  DialogueView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct DialogueView: View {
    @State var index: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.theme.primary
                    .ignoresSafeArea()
                VStack {
                    HStack{
                        Spacer()
                            Button {
                            } label: { SkipButton() }
                    }
                    Spacer()
                    HStack(alignment: .bottom, spacing: 16){
                        CharacterPortrait(image: "CharacterPlaceHolder", name: "Newton")
                        DialogueContainer(text: Data().arquisOnboarding.text[index])
                            .onTapGesture {
                                index += 1
                                if index > Data().arquisOnboarding.maxIndex {
                                    self.index = 0
                                    // change game scene
                                }
                            }
                        
                    }
                }
            }
        }
    }
}

struct DialogueView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueView()
    }
}
