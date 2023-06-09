//
//  TuringTestView.swift
//  ChallengeImpada
//
//  Created by Cynara Costa on 11/04/23.
//

import SwiftUI

//struct TuringTestView: View {
//
//    @StateObject var symbolsViewModel: SymbolViewModel
//    @State var selectedFourSymbols = false
//    @State var animation = false
//
//    init() {
//        _symbolsViewModel = StateObject(wrappedValue: SymbolViewModel())
//    }
    
//    var body: some View {
//
//        let symbols = symbolsViewModel.sortSymbols()
//        var pressedSymbols: [Symbol] = []
//
//        ZStack (alignment: .bottom) {
//            RadialBackground()
//
//            Image.theme.telephone
//                .resizable()
//                .scaledToFit()
//                .padding(.bottom, -22)
//
//            if symbolsViewModel.animatingSequence {
//                TestingScale(sequenceSymbols: symbols)
//            } else {
//                VStack (spacing: 40) {
//
//                    HStack (spacing: 48) {
//
//                        Button(action: {
//                            pressedSymbols.append(symbolsViewModel.symbols[0])
//                            if pressedSymbols.count == 4 {
//                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
//                                print(result)
//                                print(pressedSymbols)
//                            }
//                        }) {
//                            Image.theme.greenSymbol
//                                .resizable()
//                                .scaledToFit()
//                        }
//                        .id("greenButton")
//
//
//                        Button(action: {
//                            pressedSymbols.append(symbolsViewModel.symbols[1])
//                            if pressedSymbols.count == 4 {
//                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
//                                print(result)
//                                print(pressedSymbols)
//                            }
//                        }) {
//                            Image.theme.redSymbol
//                                .resizable()
//                                .scaledToFit()
//                        }
//                        .id("redButton")
//
//
//                    }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
//
//
//                    HStack (spacing: 48) {
//
//                        Button(action: {
//                            pressedSymbols.append(symbolsViewModel.symbols[3])
//                            if pressedSymbols.count == 4 {
//                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
//                                print(result)
//                                print(pressedSymbols)
//                            }
//                        }) {
//                            Image.theme.blueSymbol
//                                .resizable()
//                                .scaledToFit()
//                        }
//                        .id("blueButton")
//
//
//                        Button(action: {
//                            pressedSymbols.append(symbolsViewModel.symbols[2])
//                            if pressedSymbols.count == 4 {
//                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
//                                print(result)
//                                print(pressedSymbols)
//                            }
//                        }) {
//                            Image.theme.yellowSymbol
//                                .resizable()
//                                .scaledToFit()
//                        }
//                        .id("yellowButton")
//
//
//                    }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
//
//                }.padding(.bottom, 32)
//            }
//
//
//        }.onAppear {
//            print(symbols)
//        }
//    }
    
//}

//struct TuringTestView_Previews: PreviewProvider {
//    static var previews: some View {
//        TuringTestView()
//    }
//}
