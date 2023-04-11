import SwiftUI

struct RadialBackground: View {
    var body: some View {
        RadialGradient(
            gradient: Gradient(colors: [Color.theme.darkGreen, Color.theme.lightGreen]),
            center: .init(x: 0.5, y: 0.8),
            startRadius: 0,
            endRadius: 800
        )
        .edgesIgnoringSafeArea(.all)
        .opacity(1)
        
    }
}
