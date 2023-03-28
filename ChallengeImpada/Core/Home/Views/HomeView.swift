//
//  HomeView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            
            // background layer
            Color.theme.primary
                .ignoresSafeArea()
            
            // content layer
            homeBody
  
        }
        
    }
    
    func standBy(){
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
