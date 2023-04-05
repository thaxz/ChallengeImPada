import SwiftUI

class SymbolViewModel: ObservableObject {
    
    @Published var symbols: [Symbol] = []
    @Published var sortedSymbols: [Symbol] = []
    @Published var pressedSymbols: [Symbol] = []
    let numberOfSymbols = 4
    
    init() {
        addSymbols()
        updateSymbols()
    }
    
    func addSymbols() {
        symbols = symbolsData
    }
    
    func updateSymbols() {
        sortedSymbols = sortSymbols()
    }
    
    func sortPhrase(array: [String]) -> String {
        guard let randomPhrase = array.randomElement() else { return "Plaholder" }
        return randomPhrase
    }
    
    func sortSymbols() -> [Symbol] {
        var newSymbols = [Symbol]()
        for index in 0..<numberOfSymbols {
            guard let sortedSymbol = symbols.randomElement() else { return [Symbol(symbolImage: Image.theme.circleButton, symbolSound: "circleSound", nameSymbol: "circle")] }
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
    Symbol(symbolImage: Image.theme.starButton, symbolSound: "starSound", nameSymbol: "star"),
    Symbol(symbolImage: Image.theme.circleButton, symbolSound: "circleSound", nameSymbol: "circle"),
    Symbol(symbolImage: Image.theme.squareButton, symbolSound: "squareSound", nameSymbol: "square"),
    Symbol(symbolImage: Image.theme.triangleButton, symbolSound: "triangleSound", nameSymbol: "triangle")
]

let phrases: [String] = []
