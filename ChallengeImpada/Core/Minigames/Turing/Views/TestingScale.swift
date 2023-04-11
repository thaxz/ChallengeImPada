import SwiftUI
import Combine

struct TestingScale: View {
    
    @State var animationGreenButton: Bool = false
    @State var animationRedButton: Bool = false
    @State var animationBlueButton: Bool = false
    @State var animationYellowButton: Bool = false
    
    var body: some View {
        let symbols = [
            Symbol(symbolImage: Image.theme.greenSymbol, symbolSound: "greenSymbol"),
            Symbol(symbolImage: Image.theme.greenSymbol, symbolSound: "greenSymbol"),
            Symbol(symbolImage: Image.theme.blueSymbol, symbolSound: "blueSymbol"),
            Symbol(symbolImage: Image.theme.yellowSymbol, symbolSound: "yellowSymbol"),
        ]
        
        ZStack (alignment: .bottom) {
            RadialBackground()
            
            Image.theme.telephone
                .resizable()
                .scaledToFit()
                .padding(.bottom, -22)
            
            VStack (spacing: 40) {
                
                HStack (spacing: 48) {
                    
                    Button(action: {
                        
                    }) {
                        Image.theme.greenSymbol
                            .resizable()
                            .scaledToFit()
                    }
                    .scaleEffect(animationGreenButton ? 1.2 : 1.0)
                    .id("greenButton")
                    
                    
                    Button(action: {
                        //
                    }) {
                        Image.theme.redSymbol
                            .resizable()
                            .scaledToFit()
                    }
                    .scaleEffect(animationRedButton ? 1.2 : 1.0)
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
                    .id("blueButton")
                    
                    
                    Button(action: {
                        
                    }) {
                        Image.theme.yellowSymbol
                            .resizable()
                            .scaledToFit()
                    }
                    .scaleEffect(animationYellowButton ? 1.2 : 1.0)
                    .id("yellowButton")
                    
                    
                }.frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.22)
            }.padding(.bottom, 32)
        }
        .onAppear{
        
            
            for (index,symbol) in symbols.enumerated() {
                
                if symbol.symbolSound == "greenSymbol" {
                    print("verde")
                    
                    let delay = DispatchTimeInterval.milliseconds(Int(3000 + (index * 3000)))
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                        animationGreenButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 3.0)
                            ) {
                                animationGreenButton = false
                            }
                        }
                } else if symbol.symbolSound == "redSymbol" {
                    print("vermelho")
                    
                    let delay = DispatchTimeInterval.milliseconds(Int(3000 + (index * 3000)))
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                        animationRedButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 3.0)
                            ) {
                                animationRedButton = false
                            }
                        }

                } else if symbol.symbolSound == "blueSymbol" {
                    print("azul")
                    
                    let delay = DispatchTimeInterval.milliseconds(Int(3000 + (index * 3000)))
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                        animationBlueButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 3.0)
                            ) {
                                animationBlueButton = false
                            }
                        }

                } else {
                    print("amarelo")
                    
                    let delay = DispatchTimeInterval.milliseconds(Int(3000 + (index * 3000)))
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                        animationYellowButton = true
                            withAnimation(
                                Animation
                                    .easeInOut(duration: 3.0)
                            ) {
                                animationYellowButton = false
                            }
                        }

                }
            }
        }

    }
    
    func addAnimationGreen(whichIndex: Int) {
        if animationGreenButton {
            let delay = DispatchTimeInterval.milliseconds(Int(1500 + (whichIndex * 1500)))
            DispatchQueue.main.asyncAfter(deadline: .now() + delay ) {
                    withAnimation(
                        Animation
                            .easeInOut(duration: 1.5)
                    ) {
                        animationGreenButton = false
                    }
                }
        }
        }
    
    func addAnimationRed(whichIndex: Int) {
        guard !animationRedButton else { return }
        let delay = DispatchTimeInterval.milliseconds(Int(1500 + whichIndex * 1500))
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                withAnimation(
                    Animation
                        .easeInOut(duration: 1.5)
                ) {
                    animationRedButton = false
                }
            }
        }
    
    func addAnimationBlue(whichIndex: Int) {
        guard !animationBlueButton else { return }
        let delay = DispatchTimeInterval.milliseconds(Int(1500 + whichIndex * 1500))
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                withAnimation(
                    Animation
                        .easeInOut(duration: 1.5)
                ) {
                    animationBlueButton = false
                }
            }
        }
    
    
    func addAnimationYellow(whichIndex: Int) {
        guard !animationYellowButton else { return }
        let delay = DispatchTimeInterval.milliseconds(Int(1500 + whichIndex * 1500))
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                withAnimation(
                    Animation
                        .easeInOut(duration: 1.5)
                ) {
                    animationYellowButton = false
                }
            }
        }
    
}


struct TestingScale_Previews: PreviewProvider {
    static var previews: some View {
        TestingScale()
    }
}
