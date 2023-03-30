//
//  DialogueView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct DialogueView: View {
    @State var index: Int = 0
    @State var characterName: GameCharacter = .arquis
    let scene: DialogueScene
    var body: some View {
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
                        CharacterPortrait(character: scene.dialogues[index].data.character)
                        DialogueContainer(text: scene.dialogues[index].data.text)
                            .onTapGesture {
                                index += 1
                                if index > scene.maxIndex {
                                    self.index = 0
                                    // change game scene
                                }
                            }
                    }
                }
            }
    }
}

struct DialogueView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueView(scene: Data().daVinciFirstScene)
    }
}
