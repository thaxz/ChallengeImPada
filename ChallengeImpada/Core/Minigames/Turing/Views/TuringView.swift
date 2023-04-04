import SwiftUI


struct TuringView: View {
    
    @State var symbolsViewModel = SymbolViewModel()
    @State var selectedFourSymbols = false
    
    var body: some View {
        ZStack {
            
            let symbols = symbolsViewModel.sortSymbols()
            // array with all the pressed buttons
            var pressedSymbols: [Symbol] = []
            
            Color.theme.primary
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    ForEach(symbols, id: \.self) { symbol in
                        symbol.symbolImage
                            .resizable()
                            .scaledToFit()
                    }
                }
                
                HStack {
                    
                    Button(action: {
                        pressedSymbols.append(symbolsViewModel.symbols[0])
                        if pressedSymbols.count == 4 {
                            let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                            print(result)
                        }
                    }) {
                        Image.theme.starButton
                            .resizable()
                    }
                    
                    
                    Button(action: {
                        pressedSymbols.append(symbolsViewModel.symbols[2])
                        if pressedSymbols.count == 4 {
                            let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                            print(result)
                        }
                    }) {
                        Image.theme.squareButton
                            .resizable()
                    }
                    
                    
                }
                
                HStack {
                    
                    Button(action: {
                        pressedSymbols.append(symbolsViewModel.symbols[1])
                        if pressedSymbols.count == 4 {
                            let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                            print(result)
                        }
                    }) {
                        Image.theme.circleButton
                            .resizable()
                    }
                    
                    
                    Button(action: {
                        pressedSymbols.append(symbolsViewModel.symbols[3])
                        if pressedSymbols.count == 4 {
                            let result = symbolsViewModel.compareTwoArrayBySymbol(sortedArray: symbols, pressedArray: pressedSymbols)
                            print(result)
                        }
                        
                    }) {
                        Image.theme.triangleButton
                            .resizable()
                    }
                    
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
