//
//  CharacterDetailsView.swift
//  ChallengeImpada
//
//  Created by gabrielfelipo on 28/03/23.
//

import SwiftUI
import SceneKit

struct CharacterDetailsView: View {
    var character: Character
    
    @State var daVinci: SCNScene? = .init(named: "spongecharacter.scn")
    @State var newton: SCNScene? = .init(named: "spongecharacter.scn")
    @State var turing: SCNScene? = .init(named: "spongecharacter.scn")
    
    @GestureState var offset: CGFloat = 0
    
    let collectablesColumns = [
        GridItem(.fixed(110)),
        GridItem(.fixed(110)),
        GridItem(.fixed(110)),
        GridItem(.fixed(110))
    ]
    
    let collectablesData = 1...24
    
    var body: some View {
        VStack {
            HStack{
                
                ZStack {
                    if character.name == "Leonardo Da Vinci" {
                        CustomSceneView(scene: $daVinci)
                            .frame(height:550)
                    }
                    else if character.name == "Isaac Newton" {
                        CustomSceneView(scene: $newton)
                            .frame(height:550)
                    }
                    else if character.name == "Alan Turing" {
                        CustomSceneView(scene: $turing)
                            .frame(height:550)
                    }
                    
                    Rectangle()
                        .frame(height: 550)
                        .opacity(0.0001)
                        .foregroundColor(.white)
                        .gesture(
                            DragGesture()
                                .updating($offset, body: { value, out, _ in
                                    out = value.location.x - 700
                                })
                        )
                        .onChange(of: offset, perform: { newValue in
                            rotateObject()
                        })
                    
                    //Botões
                    VStack{
                        Spacer().frame(height: 16)
                        HStack{
                            Spacer().frame(width: 16)
                            navigationButtons
                            Spacer()
                        }
                        Spacer()
                    }
                    
                    
                }
                HStack{
                    Spacer().frame(width: 24)
                    
                    ScrollView(showsIndicators: false){
                        VStack {
                            Spacer().frame(height: 24)
                            
                            HStack {
                                Text(character.name)
                                    .foregroundColor(.white)
                                    .font(.system(size: 56, weight: .heavy))
                                
                                Spacer()
                            }
                            
                            characterInformations
                            
                            Spacer().frame(height: 48)
                            
                            HStack{
                                Text("Coletáveis")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40, weight: .bold))
                                
                                Spacer()
                            }
                            
                            Spacer().frame(height: 24)
                            
                            // Colletables Grid
                            LazyVGrid(columns: collectablesColumns, alignment: .leading, spacing: 11) {
                                ForEach(collectablesData, id: \.self) { item in
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 105,height: 105)
                                        .foregroundColor(.white)
                                    
                                }
                            }
                        }
                    }
                    
                    Spacer().frame(width: 32)
                    
                    
                }.background(Color(.gray))
            }.background(.black)
        }
    }
    
    func rotateObject() {
        let newAngle = Float((offset * .pi)/180)
        
        if character.name == "Leonardo Da Vinci" {
            daVinci?.rootNode.eulerAngles.y = newAngle
        }
        else if character.name == "Isaac Newton" {
            newton?.rootNode.eulerAngles.y = newAngle
        }
        else if character.name == "Alan Turing" {
            turing?.rootNode.eulerAngles.y = newAngle
        }
    }
}

struct CharacterDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailsView(character: CharacterDetailsData().newtonDetails)
    }
}
