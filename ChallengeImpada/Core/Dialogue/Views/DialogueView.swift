//
//  DialogueView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct DialogueView: View {
    @State var index: Int = 0
    @State var changeView: Bool = false
    
    let scene: DialogueScene
    
    var body: some View {
        ZStack {
            Image(scene.image)
                .resizable()
                .ignoresSafeArea()
            VStack {
                HStack{
                    Spacer()
                    Button(action: {
                        self.changeView.toggle()
                    }) {
                        SkipButton(destination: scene.whichViewNavigateTo)
                    }
                }
                Spacer()
                HStack(alignment: .bottom, spacing: 16){
                    
                    CharacterPortrait(character: scene.dialogues[index].data.character)
                    
                    NavigationLink(destination: scene.whichViewNavigateTo, isActive: $changeView) {
                        DialogueContainer(text: scene.dialogues[index].data.text)
                            .onTapGesture {
                                print(index)
                                if index < scene.maxIndex {
                                    index += 1
                                } else if index == scene.maxIndex{
                                    self.changeView.toggle()
                                }
                                
                            }
                    }
                }
                
                
            }
            .padding(32)
        }
    }
}


struct DialogueView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueView(scene: Data().turingOnboardingScene)
    }
}
