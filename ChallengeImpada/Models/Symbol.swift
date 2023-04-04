import SwiftUI

struct Symbol: Hashable {
    
    let id: String
    let symbolImage: Image
    let symbolSound: String
    
    init(id: String = UUID().uuidString, symbolImage: Image, symbolSound: String) {
        self.id = id
        self.symbolImage = symbolImage
        self.symbolSound = symbolSound
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    
}
