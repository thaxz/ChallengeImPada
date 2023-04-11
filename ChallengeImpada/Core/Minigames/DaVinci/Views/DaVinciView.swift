//
//  DaVinciView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct DaVinciView: View {
    @StateObject var DaVinciVM: DaVinciViewModel
    
    init() {
        _DaVinciVM = StateObject(wrappedValue: DaVinciViewModel())
    }
    
    var body: some View {
            ZStack {
                NavigationLink(destination: LevelSelectionView(), isActive: $DaVinciVM.backToSelection) {EmptyView()}
                VStack(spacing: 128) {
                    if !DaVinciVM.secondStage {
                        HStack(spacing: 112) {
                            Button {
                                DaVinciVM.redPress()
                            } label: {
                                RedButtonComponent
                            }
                            Button {
                                DaVinciVM.bluePress()
                            } label: {
                                BlueButtonComponent
                            }
                            Button {
                                DaVinciVM.yellowPress()
                            } label: {
                                YellowButtonComponent
                            }
                        }
                        .padding(.horizontal)
                        .offset(x: -12.0, y: 30.0)
                    } else {
                        HStack(spacing: 110.0) {
                            Button {
                                DaVinciVM.redPress()
                            } label: {
                                RedButtonComponent
                            }
                            Button {
                                DaVinciVM.bluePress()
                            } label: {
                                BlueButtonComponent
                            }
                            Button {
                                DaVinciVM.yellowPress()
                            } label: {
                                YellowButtonComponent
                            }
                            Button {
                                DaVinciVM.greenPress()
                            } label: {
                                GreenButtonComponent
                            }
                            Button {
                                DaVinciVM.purplePress()
                            } label: {
                                PurpleButtonComponent
                            }
                            Button {
                                DaVinciVM.orangePress()
                            } label: {
                                OrangeButtonComponent
                            }
                        }
                        .offset(x: 0.0, y: 10.0)
                }
                VStack(spacing: 128.0){
                    Button {
                    } label: {
                        goalColor
                    }
                    Button {
                        DaVinciVM.removeColors()
                    } label: {
                        redoButton
                    }
                    .offset(x: -0.0, y: -96.0)
                }
                .offset(x: -514.0, y: 170.0)
            }
            }
            .background(
                DaVinciVM.bgImage
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
            .onAppear{
                DaVinciVM.makeRandomColor()
            }
            .sheet(isPresented: $DaVinciVM.tutorialPopUp) {
                DaVinciTutorialView()
                    .clearModalBackground()
            }
            .sheet(isPresented: $DaVinciVM.switchStagePopUp) {
                SecondStageView()
                    .clearModalBackground()
            }
            /*.sheet(isPresented: $DaVinciVM.endGamePopUp) {
                EndGameView()
                    .clearModalBackground()
            }*/
            .sheet(isPresented: $DaVinciVM.endGamePopUp, onDismiss: {
                DaVinciVM.backToSelection.toggle()
            }, content: {
                EndGameView()
                    .clearModalBackground()
            })
        }
}

struct DaVinciView_Previews: PreviewProvider {
    static var previews: some View {
        DaVinciView()
    }
}
