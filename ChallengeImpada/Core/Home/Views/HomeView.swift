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
            
            VStack (spacing: 64) {
                VStack (spacing: 80) {
                    
                    Text("ARQUIS")
                        .frame(width: UIScreen.main.bounds.width * 0.43, height: UIScreen.main.bounds.height * 0.2)
                        .font(.system(size: 100, weight: .bold))
                        .foregroundColor(Color.theme.accent)
                    
                    Image("playButton")
                    
                    Button(action: standBy, label: {
                        Text("Museu")
                            .foregroundColor(Color.theme.primary)
                            .font(.system(size: 50, weight: .bold))
                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.09)
                            .background(Color.theme.accent)
                            .cornerRadius(6)
                    })
  
                }
                
                HStack {
                    
                    Button(action: standBy, label: {
                        Text("Créditos")
                            .foregroundColor(Color.theme.accent)
                            .font(.system(size: 50, weight: .bold))
                            .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.09)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.theme.accent, lineWidth: 5)
                            )
                            
                    })
                    Spacer()
                }
                .padding(.leading, 48)
             
            }
  
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
