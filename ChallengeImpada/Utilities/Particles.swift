import SwiftUI

struct EmitterView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterShape = .line
        emitterLayer.emitterCells = createEmitterCells()
        
        emitterLayer.emitterSize = CGSize(width: UIScreen.main.bounds.width, height: 1)
        emitterLayer.emitterPosition = CGPoint(x: UIScreen.main.bounds.width / 2, y: 0)
        
        view.layer.addSublayer(emitterLayer)
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    func createEmitterCells() -> [CAEmitterCell] {
        
        var emitterCells: [CAEmitterCell] = []
        
        for index in 1...12{
            let cell = CAEmitterCell()
            
            cell.contents = UIImage(named: getImage(index: index))?.cgImage
            cell.color = getColor().cgColor
            cell.birthRate = 4.5
            
            cell.lifetimeRange = 20
            cell.velocity = 120
            
            cell.scale = 0.2
            cell.scaleRange = 0.3
            cell.emissionLongitude = .pi
            cell.emissionRange = 0.5
            cell.spin = 3.5
            cell.spinRange = 1
            
            cell.yAcceleration = 40
            
            emitterCells.append(cell)
            
        }
        
        
        return emitterCells
    }
    
    func getColor() -> UIColor {
        let colors: [UIColor] = [.systemPink, .systemGreen, .systemRed, .systemOrange, .systemPurple]
        return colors.randomElement()!
    }
    
    func getImage(index: Int) -> String {
        if index < 4 {
            return "confetti"
        }
        else if index > 5 && index <= 8{
            return "confetti2"
        } else {
            return "confetti3"
        }
    }
    
}
