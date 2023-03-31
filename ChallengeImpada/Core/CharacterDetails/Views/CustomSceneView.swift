//
//  CustomSceneView.swift
//  ChallengeImpada
//
//  Created by gabrielfelipo on 28/03/23.
//

import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable {
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) ->  SCNView {
        let view = SCNView()
        view.allowsCameraControl = false
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        view.backgroundColor = .clear
        
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        
    }
}

struct CustomSceneView_Previews: PreviewProvider {
    static var previews: some View {
        let newton: Character = Character(
            name: "Isaac Newton",
            image3D: "spongecharacter.scn",
            imagePortrait: Image.theme.newton,
            about: "Cientista chefe sobre o estudo da Gravidade em UFPE. Toda ação gera uma reação de igual intensidade mas sentido oposto, então não mexe comigo 😉",
            nationality: "Britânico",
            job: "Cientista",
            invention: "Gravidade")
        CharacterDetailsView(character: newton)
    }
}
