//
//  MuseuView.swift
//  ChallengeImpada
//
//  Created by lss8 on 29/03/23.
//

import SwiftUI

struct MuseuView: View {
    
    //    @ObservedObject var charactersViewModel = CharacterViewModel()
    @State var charactersViewModel = CharacterViewModel()
    
    var body: some View {
        
        carouselBody
        
    }
}

struct MuseuView_Previews: PreviewProvider {
    static var previews: some View {
        MuseuView()
    }
}
