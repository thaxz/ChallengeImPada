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
            //Color.theme.primary
              //  .ignoresSafeArea()
            VStack(spacing: 128) {
                HStack(spacing: 128) {
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
                if DaVinciVM.secondStage {
                    HStack(spacing: 128) {
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
                }
                HStack {
                    Button {
                        DaVinciVM.merge()
                        DaVinciVM.compareColors()
                        DaVinciVM.removeFirstColor()
                        DaVinciVM.removeSecondColor()
                    } label: {
                        mergeButtonComponent
                    }
                }
                HStack(spacing: 128.0) {
                    goalColor
                        .onTapGesture {
                            DaVinciVM.makeRandomColor()
                        }
                    HStack {
                        ZStack {
                            circleColor1
                            Button {
                                DaVinciVM.removeFirstColor()
                            } label: {
                                redoButton
                            }
                        }
                    }
                    HStack {
                        ZStack {
                            circleColor2
                            Button {
                                DaVinciVM.removeSecondColor()
                            } label: {
                                redoButton
                            }
                        }
                    }
                }
                
            }
        }
        .onAppear{
            DaVinciVM.makeRandomColor()
        }
        .sheet(isPresented: $DaVinciVM.tutorialPopUp) {
            DaVinciTutorialView()
                .clearModalBackground()
                //.ignoresSafeArea()
                
        }
        .sheet(isPresented: $DaVinciVM.switchStagePopUp) {
            SecondStageView()
                .clearModalBackground()
                //.ignoresSafeArea()
                
        }
        .sheet(isPresented: $DaVinciVM.endGamePopUp) {
            EndGameView()
                .clearModalBackground()
                //.ignoresSafeArea()
        }
    }
}

struct DaVinciView_Previews: PreviewProvider {
    static var previews: some View {
        DaVinciView()
    }
}
