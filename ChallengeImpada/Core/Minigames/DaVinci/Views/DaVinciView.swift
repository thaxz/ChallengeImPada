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
                        DaVinciVM.magentaPress()
                    } label: {
                        MagentaButtonComponent
                    }
                    Button {
                        DaVinciVM.cyanPress()
                    } label: {
                        CyanButtonComponent
                    }
                    Button {
                        DaVinciVM.yellowPress()
                    } label: {
                        YellowButtonComponent
                    }
                }
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
                    //Text("Oi sou o Da Vinci")
                        //.foregroundColor(.white)
                        //.foregroundColor(Color(UIColor.blend(color1: .yellow, intensity1: 0.5, color2: .blue, intensity2: 0.5)))
                }
                HStack {
                    Button {
                        DaVinciVM.merge()
                        DaVinciVM.compareColors()
                    } label: {
                        mergeButtonComponent
                    }
                }
                HStack(spacing: 128.0) {
                    goalColor
                        .onTapGesture {
                            DaVinciVM.makeRandomColor()
                        }
                    circleColor1
                    circleColor2
                }
                
            }
        }
        .onAppear{
            DaVinciVM.makeRandomColor()
        }
    }
}

struct DaVinciView_Previews: PreviewProvider {
    static var previews: some View {
        DaVinciView()
    }
}
