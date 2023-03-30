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
    let about: String
    let nationality: String
    let job: String
    let invention: String
    
    init(id: String = UUID().uuidString, name: String, image3D: String, imagePortrait: Image, about: String, nationality: String, job: String, invention: String) {
        self.id = id
        self.name = name
        self.image3D = image3D
        self.imagePortrait = imagePortrait
        self.about = about
        self.nationality = nationality
        self.job = job
        self.invention = invention
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
}

