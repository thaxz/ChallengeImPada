import SwiftUI


struct TuringView: View {
    
    @ObservedObject var symbolsViewModel = SymbolViewModel()
    @State var selectedFourSymbols = false
    @State var showCreditsView = false
    
    var body: some View {
        ZStack {
            
            Color.theme.primary
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    ForEach(symbolsViewModel.sortedSymbols, id: \.self) { symbol in
                        symbol.symbolImage
                            .resizable()
                            .scaledToFit()
                    }
                }
                
                HStack {
                    
                    Button(action: {
                        symbolsViewModel.pressedSymbols.append(symbolsViewModel.symbols[0])
                    }) {
                        Image.theme.starButton
                            .resizable()
                    }
                    
                    
                    Button(action: {
                        symbolsViewModel.pressedSymbols.append(symbolsViewModel.symbols[2])
                    }) {
                        Image.theme.squareButton
                            .resizable()
                    }
                    
                    
                }
                
                HStack {
                    
                    Button(action: {
                        symbolsViewModel.pressedSymbols.append(symbolsViewModel.symbols[1])
                    }) {
                        Image.theme.circleButton
                            .resizable()
                    }
                    
                    
                    Button(action: {
                        symbolsViewModel.pressedSymbols.append(symbolsViewModel.symbols[3])
                        
                    }) {
                        Image.theme.triangleButton
                            .resizable()
                    }
                    
                }
                
                NavigationLink(destination: CreditsView(), isActive: $showCreditsView) {
                    EmptyView()
                }
                
            }.onReceive(Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()) { _ in
                if symbolsViewModel.pressedSymbols.count == 4 {
                    let isMatch = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbolsViewModel.sortedSymbols, pressedArray: symbolsViewModel.pressedSymbols)
                    
                    if isMatch {
                        symbolsViewModel.sortedSymbols = symbolsViewModel.sortSymbols()
                        
                        
                    } else {
                        print("errou porra")
                        showCreditsView = true
                        
                    }
                    symbolsViewModel.pressedSymbols = []
                }
            }
            
            
        }
    }
}

struct TuringView_Previews: PreviewProvider {
    static var previews: some View {
        TuringView()
    }
}
