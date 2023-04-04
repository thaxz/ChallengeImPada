//
//  NewtonScene2.swift
//  ChallengeImpada
//
//  Created by thaxz on 04/04/23.
//
import SpriteKit
import Foundation

class NewtonScene2: SKScene, ObservableObject {
    
    let player = SKSpriteNode(imageNamed: "player1")
    
    var playerAnimation = [SKTexture]()
    
    override func didMove(to view: SKView){
        self.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene?.scaleMode = .fill
        
        anchorPoint = .zero
        // DEPOIS MUDAR PRO QUE TÁ EM NEWTON1
        player.position = CGPoint(x: 2 + player.size.width , y: size.height - player.size.height )
        player.setScale(4)
        player.zPosition = 10
        addChild(player)
        
        
        let textureAtlas = SKTextureAtlas(named: "Sprites")
        for i in 1..<textureAtlas.textureNames.count {
            let name = "player" + String(i)
            playerAnimation.append(textureAtlas.textureNamed(name))
        }
        player.run(SKAction.repeatForever(SKAction.animate(with: playerAnimation, timePerFrame: 0.10)))
        
    }
    
    
    func MoveBackgrounds(image: String, y: CGFloat, z: CGFloat, duration: Double, needsPhysics: Bool, size: CGSize){
        for i in 0...1{
            let node = SKSpriteNode(imageNamed: image)
            node.anchorPoint = .zero
            node.position = CGPoint(x: size.width * CGFloat(i), y: y)
            node.size = size
            node.zPosition = z
            
            if needsPhysics {
                node.physicsBody = SKPhysicsBody(rectangleOf: node.size)
                node.physicsBody?.isDynamic = false
                node.physicsBody?.contactTestBitMask = 1
                node.name = "player1"
            }
            
        }
        
    }
    
}
