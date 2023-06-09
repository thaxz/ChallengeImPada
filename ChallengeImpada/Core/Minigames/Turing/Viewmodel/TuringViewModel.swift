import SwiftUI

class SymbolViewModel: ObservableObject {
    
    @Published var symbols: [Symbol] = []
    @Published var animatingSequence: Bool = true
    
    init() {
        addSymbols()
    }
    
    func addSymbols() {
        symbols = symbolsData
    }
    
    func sortPhrase(array: [String]) -> String {
        guard let randomPhrase = array.randomElement() else { return "Placeholder" }
        return randomPhrase
    }
    
    func sortSymbols() -> [Symbol] {
        var newSymbols = [Symbol]()
        for index in 0..<4 {
            guard let sortedSymbol = symbols.randomElement() else { return [Symbol(symbolImage: Image.theme.greenSymbol, symbolSound: "greenSymbol")] }
            newSymbols.append(sortedSymbol)
        }
        return newSymbols
    }
    
    func compareTwoArrayBySymbol(sortedArray: [Symbol], pressedArray: [Symbol]) -> Bool {
        for (index, symbolSortedArray) in sortedArray.enumerated() {
            let symbolPressedArray = pressedArray[index]
            if symbolSortedArray.symbolImage != symbolPressedArray.symbolImage {
                return false
            }
        }
        return true
    }
    
}

let symbolsData = [
    Symbol(symbolImage: Image.theme.greenSymbol, symbolSound: "greenSymbol"),
    Symbol(symbolImage: Image.theme.redSymbol, symbolSound: "redSymbol"),
    Symbol(symbolImage: Image.theme.yellowSymbol, symbolSound: "yellowSymbol"),
    Symbol(symbolImage: Image.theme.blueSymbol, symbolSound: "blueSymbol")
]

let phrases: [String] = []
