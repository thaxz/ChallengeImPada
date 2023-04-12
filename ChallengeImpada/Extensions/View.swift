//
//  View.swift
//  ChallengeImpada
//
//  Created by lss8 on 04/04/23.
//

import Foundation
import SwiftUI

extension View {
    func clearModalBackground()->some View {
        self.modifier(ClearBackgroundViewModifier())
    }
}

struct ClearBackgroundView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return SuperviewRecolourView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct ClearBackgroundViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(ClearBackgroundView())
    }
}

class SuperviewRecolourView: UIView {
    override func layoutSubviews() {
        guard let parentView = superview?.superview
        else {
            print("ERROR: Failed to get parent view to make it clear")
            return
        }
        parentView.backgroundColor = .clear
    }
}

