//
//  Character.swift
//  ChallengeImpada
//
//  Created by thaxz on 29/03/23.
//

import Foundation
import SwiftUI

struct Character: Identifiable, Hashable {
    
    let id: String
    let name: String
    let image3D: String
    let imagePortrait: Image
    
    init(id: String = UUID().uuidString, name: String, image3D: String, imagePortrait: Image) {
        self.id = id
        self.name = name
        self.image3D = image3D
        self.imagePortrait = imagePortrait
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    
}

