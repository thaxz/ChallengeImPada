//
//  NewtonScene2.swift
//  ChallengeImpada
//
//  Created by thaxz on 04/04/23.
//
import SpriteKit
import Foundation
import SwiftUI
import GameplayKit

class NewtonScene2: SKScene, ObservableObject, SKPhysicsContactDelegate {
    
    let player = SKSpriteNode(imageNamed: "player1")
    var gameArea: CGFloat = 900.0
    
    var playerAnimation = [SKTexture]()
    
    var touchesBegan = false
    
    var gengerTimer = Timer()
    
    var scoreTimer = Timer()
    
    @Published var isGameOver = false
    @Published var score = 0
    
    override func didMove(to view: SKView){
        self.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene?.scaleMode = .fill
        
        anchorPoint = .zero
        physicsWorld.gravity = CGVector(dx: 0, dy: -3)
        physicsWorld.contactDelegate = self
        
        // DEPOIS MUDAR PRO QUE TÁ EM NEWTON1
        //player.position = CGPoint(x: 2 + player.size.width , y: size.height - player.size.height )
        player.position = CGPoint(x: 60, y: size.height - gameArea/2)
        player.setScale(4)
        player.physicsBody = SKPhysicsBody(rectangleOf: player.size)
        player.physicsBody?.categoryBitMask = 1
        player.zPosition = 10
        addChild(player)
        
        
        let textureAtlas = SKTextureAtlas(named: "Sprites")
        for i in 1..<textureAtlas.textureNames.count {
            let name = "player" + String(i)
            playerAnimation.append(textureAtlas.textureNamed(name))
        }
        
        MoveBackgrounds(image: "background", y: 0, z: -5, duration: 10, needsPhysics: false, size: self.size)
        
        MoveBackgrounds(image: "floor", y: 0, z: -2, duration: 5, needsPhysics: true, size: CGSize(width: self.size.width, height: 200))
        
        player.run(SKAction.repeatForever(SKAction.animate(with: playerAnimation, timePerFrame: 0.10)))
        
        //gengerTimer = .scheduledTimer(timeInterval: 1, target: self, selector: #selector(gegnerErstellen), userInfo: nil, repeats: true)
        
        scoreTimer = .scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(addScore), userInfo: nil, repeats: true)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchesBegan = true
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchesBegan = false
    }
    
    override func update(_ currentTime: TimeInterval) {
        if touchesBegan {
            player.physicsBody?.velocity = CGVector(dx: 0, dy: 200)
        }
        if player.position.y > 840 {
            player.position.y = 840
        }
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
            
            let move = SKAction.moveBy(x: -node.size.width, y: 0, duration: duration)
            let wrap = SKAction.moveBy(x: node.size.width, y: 0, duration: 0)
            let sequence = SKAction.sequence([move, wrap])
            let immer = SKAction.repeatForever(sequence)
            
            node.run(immer)
            
            addChild(node)
            
        }
        
    }
    
    @objc func gegnerErstellen(){
        let zufallsZahl = GKRandomDistribution(lowestValue: 10, highestValue: 360)
        let genger = SKSpriteNode(imageNamed: "player1")
        genger.position = CGPoint(x: 900, y: zufallsZahl.nextInt() + 4)
        genger.setScale(3)
        genger.zPosition = 5
        genger.physicsBody = SKPhysicsBody(rectangleOf: genger.size)
        genger.physicsBody?.isDynamic = false
        genger.physicsBody?.contactTestBitMask = 1
        genger.name = "player1"
        
        addChild(genger)
        
        let moveAktion = SKAction.moveTo(x: -90, duration: 10)
        let removeAktion = SKAction.removeFromParent()
        
        let aktions = SKAction.sequence([moveAktion, removeAktion])
        
        genger.run(aktions)
        
        let textureAtlas = SKTextureAtlas(named: "Sprites")
        var gengerAnimation = [SKTexture]()
        
        for i in 1..<textureAtlas.textureNames.count {
            let name = "player" + String(i)
            gengerAnimation.append(textureAtlas.textureNamed(name))
        }
        
        genger.run(SKAction.repeatForever(SKAction.animate(with: gengerAnimation, timePerFrame: 0.14)))
    }
    
    func playerHit(node: SKNode){
        if node.name == "genger" {
            player.removeFromParent()
            gameOver()
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        guard let nodeA = contact.bodyA.node else {return}
        guard let nodeB = contact.bodyB.node else {return}
        
        if nodeA == player {
            playerHit(node: nodeB)
        }
        if nodeB == player {
            playerHit(node: nodeA)
        }
    }
    
    func gameOver(){
        gengerTimer.invalidate()
        
        let gameOverLabel = SKLabelNode(text: "Game over ")
        gameOverLabel.fontSize = 32
        gameOverLabel.fontColor = .red
        gameOverLabel.zPosition = 10
        gameOverLabel.position = CGPoint(x: size.width / 2, y: size.height / 2)
        
        addChild(gameOverLabel)
        
        isGameOver = true
    }
    
    @objc func addScore(){
        score += 1
    }
    
}
