import SwiftUI
import Combine

struct TestingScale: View {
    
    @StateObject var symbolsViewModel =  SymbolViewModel()
    
    @State var animationGreenButton: Bool = false
    @State var animationRedButton: Bool = false
    @State var animationBlueButton: Bool = false
    @State var animationYellowButton: Bool = false
    
    @State var selectedFourSymbols = false
    
    @State var animatingSequence = true
    
    @State var symbols: [Symbol] = []
    
    
    var body: some View {
        //        let symbols = sequenceSymbols
        
        var pressedSymbols: [Symbol] = []
        
        ZStack (alignment: .bottom) {
            RadialBackground()
            
            Image.theme.telephone
                .resizable()
                .scaledToFit()
                .padding(.bottom, -22)
            if animatingSequence {
                VStack (spacing: 40) {
                    
                    HStack (spacing: 48) {
                        
                        Button(action: {
                            
                        }) {
                            Image.theme.greenSymbol
                                .resizable()
                                .scaledToFit()
                        }
                        .scaleEffect(animationGreenButton ? 1.2 : 1.0)
                        .shadow(color: animationGreenButton ? Color.theme.shadowGreen : Color.theme.secondary.opacity(0.3), radius: animationGreenButton ? 100 : 20)
                        .disabled(true)
                        .id("greenButton")
                        
                        
                        Button(action: {
                            //
                        }) {
                            Image.theme.redSymbol
                                .resizable()
                                .scaledToFit()
                        }
                        .scaleEffect(animationRedButton ? 1.2 : 1.0)
                        .shadow(color: animationRedButton ? Color.theme.shadowRed : Color.theme.secondary.opacity(0.3), radius: animationRedButton ? 100 : 10)
                        .disabled(true)
                        .id("redButton")
                        
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
                    
                    
                    HStack (spacing: 48) {
                        
                        Button(action: {
                            
                        }) {
                            Image.theme.blueSymbol
                                .resizable()
                                .scaledToFit()
                        }
                        .scaleEffect(animationBlueButton ? 1.2 : 1.0)
                        .shadow(color: animationBlueButton ? Color.theme.shadowBlue : Color.theme.secondary.opacity(0.3), radius: animationBlueButton ? 100 : 10)
                        .disabled(true)
                        .id("blueButton")
                        
                        
                        Button(action: {
                            
                        }) {
                            Image.theme.yellowSymbol
                                .resizable()
                                .scaledToFit()
                        }
                        .scaleEffect(animationYellowButton ? 1.2 : 1.0)
                        .shadow(color: animationYellowButton ? Color.theme.shadowYellow : Color.theme.secondary.opacity(0.3), radius: animationYellowButton ? 100 : 10)
                        .disabled(true)
                        .id("yellowButton")
                        
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
                }.padding(.bottom, 32)
            } else {
                VStack (spacing: 40) {
                    
                    HStack (spacing: 48) {
                        
                        Button(action: {
                            pressedSymbols.append(symbolsViewModel.symbols[0])
                            if pressedSymbols.count == 4 {
                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                                print(symbols)
                                print(pressedSymbols)
                                print(result)
                            }
                        }) {
                            Image.theme.greenSymbol
                                .resizable()
                                .scaledToFit()
                                
                        }
                        .id("greenButton")
                        .shadow(color: Color.theme.secondary.opacity(0.3), radius: 20)
                        
                        
                        Button(action: {
                            pressedSymbols.append(symbolsViewModel.symbols[1])
                            if pressedSymbols.count == 4 {
                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                                print(symbols)
                                print(pressedSymbols)
                                print(result)
                            }
                        }) {
                            Image.theme.redSymbol
                                .resizable()
                                .scaledToFit()
                                
                        }
                        .id("redButton")
                        .shadow(color: Color.theme.secondary.opacity(0.3), radius: 20)
                        
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
                    
                    
                    HStack (spacing: 48) {
                        
                        Button(action: {
                            pressedSymbols.append(symbolsViewModel.symbols[3])
                            if pressedSymbols.count == 4 {
                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                                print(symbols)
                                print(pressedSymbols)
                                print(result)
                            }
                        }) {
                            Image.theme.blueSymbol
                                .resizable()
                                .scaledToFit()
                                
                        }
                        .id("blueButton")
                        .shadow(color: Color.theme.secondary.opacity(0.3), radius: 20)
                        
                        
                        Button(action: {
                            pressedSymbols.append(symbolsViewModel.symbols[2])
                            if pressedSymbols.count == 4 {
                                let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                                print(symbols)
                                print(pressedSymbols)
                                print(result)
                            }
                        }) {
                            Image.theme.yellowSymbol
                                .resizable()
                                .scaledToFit()
                                
                        }
                        .id("yellowButton")
                        .shadow(color: Color.theme.secondary.opacity(0.3), radius: 20)
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
                    
                }.padding(.bottom, 32)
                    .onAppear {
                        print(symbols)
                    }
            }
            
        }
        .onAppear{
            
            symbols = symbolsViewModel.sortSymbols()
            
            if animatingSequence {
                
                for (index,symbol) in symbols.enumerated() {
                    if symbol.symbolSound == "greenSymbol" {
                        print("verde")
                        
                        let delay = DispatchTimeInterval.milliseconds(Int(2000 + (index * 2000)))
                        DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                            animationGreenButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 2.0)
                            ) {
                                animationGreenButton = false
                                if index == symbols.count - 1 {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        animatingSequence.toggle()
                                        print("ultimo")
                                    }
                                    
                                }
                            }
                        }
                    } else if symbol.symbolSound == "redSymbol" {
                        print("vermelho")
                        
                        let delay = DispatchTimeInterval.milliseconds(Int(2000 + (index * 2000)))
                        DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                            animationRedButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 2.0)
                            ) {
                                animationRedButton = false
                                if index == symbols.count - 1 {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        print("ultimo")
                                        animatingSequence.toggle()
                                    }
                                    
                                }                        }
                        }
                        
                    } else if symbol.symbolSound == "blueSymbol" {
                        print("azul")
                        
                        let delay = DispatchTimeInterval.milliseconds(Int(2000 + (index * 2000)))
                        DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                            animationBlueButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 2.0)
                            ) {
                                animationBlueButton = false
                                if index == symbols.count - 1 {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        print("ultimo")
                                        animatingSequence.toggle()
                                        print(animatingSequence)
                                    }
                                    
                                }
                                
                            }
                        }
                        
                    } else {
                        print("amarelo")
                        
                        let delay = DispatchTimeInterval.milliseconds(Int(2000 + (index * 2000)))
                        DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                            animationYellowButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 2.0)
                            ) {
                                animationYellowButton = false
                                if index == symbols.count - 1 {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        print("ultimo")
                                        animatingSequence.toggle()
                                        print(animatingSequence)
                                    }
                                    
                                }
                            }
                        }
                        
                    }
                }
            }
            
            
        }
    }
    
    
}
