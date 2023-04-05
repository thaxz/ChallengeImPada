import SwiftUI

struct Symbol: Hashable {
    
    let id: String
    let symbolImage: Image
    let symbolSound: String
    let nameSymbol: String
    
    init(id: String = UUID().uuidString, symbolImage: Image, symbolSound: String, nameSymbol: String) {
        self.id = id
        self.symbolImage = symbolImage
        self.symbolSound = symbolSound
        self.nameSymbol = nameSymbol
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    
}
