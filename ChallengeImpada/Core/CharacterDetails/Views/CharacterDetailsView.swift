//
//  CharacterDetailsView.swift
//  ChallengeImpada
//
//  Created by gabrielfelipo on 28/03/23.
//

import SwiftUI
import SceneKit

struct CharacterDetailsView: View {
    @State var scene: SCNScene? = .init(named: "spongecharacter.scn")
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
                    CustomSceneView(scene: $scene)
                        .frame(height:550)
                    
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
                    
                    
                }
                HStack{
                    Spacer().frame(width: 24)
                    
                    ScrollView(showsIndicators: false){
                        VStack {
                            Spacer().frame(height: 24)
                            
                            HStack {
                                Text("Isaac Newton")
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
        
        scene?.rootNode.eulerAngles.y = newAngle
    }
}

struct CharacterDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailsView()
    }
}
