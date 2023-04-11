import SwiftUI
import Combine

struct TestingScale: View {
    @State private var symbolsViewModel = SymbolViewModel()
    @State private var currentIndex: Int = 0
    
    // Cria um timer publisher que emite um valor a cada 3 segundos
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        let symbols = [
            Symbol(symbolImage: Image.theme.greenSymbol, symbolSound: "greenSymbol"),
            Symbol(symbolImage: Image.theme.greenSymbol, symbolSound: "greenSymbol"),
            Symbol(symbolImage: Image.theme.blueSymbol, symbolSound: "blueSymbol"),
            Symbol(symbolImage: Image.theme.yellowSymbol, symbolSound: "yellowSymbol"),
        ]
        var pressedSymbols: [Symbol] = []
        
        ZStack (alignment: .bottom) {
            RadialBackground()
            
            Image.theme.telephone
                .resizable()
                .scaledToFit()
                .padding(.bottom, -22)
            
            ForEach(0..<symbols.count, id: \.self) { index in
                symbols[index].symbolImage
                    .resizable()
                    .scaledToFit()
                    .opacity(currentIndex == index ? 1 : 0)
                    .animation(.easeInOut(duration: 0.5))
            }
        }
        .onReceive(timer) { _ in
            // Atualiza o valor de currentIndex a cada 3 segundos
            currentIndex += 1
            if currentIndex >= symbols.count {
                currentIndex = 0
            }
        }
    }
}

struct TestingScale_Previews: PreviewProvider {
    static var previews: some View {
        TestingScale()
    }
}
