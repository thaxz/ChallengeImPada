//
//  NewtonView.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import SpriteKit
import GameplayKit
import SwiftUI

class NewtonScene: SKScene, ObservableObject {
    
    var floor: SKSpriteNode!
    var intro: SKSpriteNode!
    var player: SKSpriteNode!
    var scoreLabel: SKLabelNode!
    
    let scoreSound = SKAction.playSoundFileNamed("score.mp3", waitForCompletion: false)
    let gameOverSound = SKAction.playSoundFileNamed("hit.mp3", waitForCompletion: false)
    
    var velocity: Double = 100
    var gameArea: CGFloat = 900.0
    var flyForce: CGFloat = 28.0
    
    var timer: Timer!
    
    @Published var isGameOver = false
    @Published var score = 0
    
    @Published var gameFinished = false
    @Published var gameStarted = false
    @Published var restart = false
    
    var playerCategory: UInt32 = 1
    var enemyCategory: UInt32 = 2
    var scoreCategory: UInt32 = 4
    
    weak var newtonViewModel: NewtonViewModel?
    
    
    override func didMove(to view: SKView) {
        
        self.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene?.scaleMode = .fill
        
        physicsWorld.contactDelegate = self
        
        addBackground()
        addFloor()
        addIntro()
        addPlayer()
        moveFloor()
    }
    
    // Adicionando intro
    func addIntro(){
        // Criando o node
        intro = SKSpriteNode(imageNamed: "intro")
        // Arrumando posição
        intro.position = CGPoint(x: size.width/2, y: size.height - 210)
        intro.zPosition = 3
        // Adicionando
        addChild(intro)
    }
    
    // Adicionando background
    func addBackground(){
        // transformando a imagem em um node
        let background = SKSpriteNode(imageNamed: "background")
        // Arrumando a posição
        // Como a imagem surge no canto, passando pro centro
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.size = self.size
        // Ajustando o z
        background.zPosition = 0
        // adicionando na cena
        addChild(background)
    }
    
    // Adicionando o piso
    func addFloor(){
        // Criando o node
        floor = SKSpriteNode(imageNamed: "floor")
        // Arrumando posição
        floor.position = CGPoint(x: floor.size.width, y: size.height - gameArea - floor.size.height/2)
        floor.zPosition = 2
        floor.size = CGSize(width: self.size.width * 2, height: 400)
        // Adicionando
        addChild(floor)
        
        // criando barreira no chão
        let invisibleFloor = SKNode()
        invisibleFloor.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: size.width, height: 1))
        // vai ficar parado, sem gravidade
        invisibleFloor.physicsBody?.isDynamic = false
        // Categoria vai ser de inimigo pq se tocar é game over
        invisibleFloor.physicsBody?.categoryBitMask = enemyCategory
        invisibleFloor.physicsBody?.contactTestBitMask = playerCategory
        invisibleFloor.position = CGPoint(x: size.width/2, y: size.height - gameArea)
        invisibleFloor.zPosition = 2
        addChild(invisibleFloor)
        
        // criando barreira no teto
        let invisibleRoof = SKNode()
        invisibleRoof.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: size.width, height: 1))
        // vai ficar parado, sem gravidade
        invisibleRoof.physicsBody?.isDynamic = false
        invisibleRoof.position = CGPoint(x: size.width/2, y: size.height)
        invisibleRoof.zPosition = 2
        addChild(invisibleRoof)
    }
    
    // Animação do floor
    func moveFloor(){
        // criando a duração
        let duration = Double(floor.size.width/2)/velocity
        // criando a ação
        let moveFloorAction = SKAction.moveBy(x: -floor.size.width/2, y: 0, duration: duration)
        // o de cima move pra esquerda e o de baixo para a direita. vou criar um loop dos dois
        let resetXAction = SKAction.moveBy(x: floor.size.width/2, y: 0, duration: 0)
        // criando ação de sequência
        let sequenceAction = SKAction.sequence([moveFloorAction, resetXAction])
        // repetindo a sequencia forever
        let repeatAction = SKAction.repeatForever(sequenceAction)
        // colocando no node
        floor.run(repeatAction)
    }
    
    
    // Adicionando dragão
    func addPlayer(){
        player = SKSpriteNode(imageNamed: "player1")
        player.zPosition = 4
        player.position = CGPoint(x: 60, y: size.height - gameArea/2)
        
        // add texturas
        var playerTextures = [SKTexture]()
        // Pegando meus sprites
        for i in 1...4 {
            playerTextures.append(SKTexture(imageNamed: "player\(i)"))
        }
        // criando animação
        let animationAction = SKAction.animate(with: playerTextures, timePerFrame: 0.09)
        // deixando em loop
        let repeatAction = SKAction.repeatForever(animationAction)
        // Colocando a animação no player
        player.run(repeatAction)
        
        addChild(player)
    }
    
//    func addScore(){
//        // ajustando a fonte
//        //scoreLabel.fontSize = 45
//        scoreLabel.text = "\(score)"
//        scoreLabel.alpha = 0.8
//
//        scoreLabel.zPosition = 5
//        scoreLabel.position = CGPoint(x: size.width/2, y: size.height - 100)
//
//       // addChild(scoreLabel)
//
//    }
    
    // Método de spawnar inimigos
    func spawnEnemies(){
        // Posição aleatória
        let initialPosition = CGFloat(arc4random_uniform(132) + 74)
        let enemyNumber = Int(arc4random_uniform(4) + 1)
        // a distância que vai ter entre o de cima e o de baixo
        let enemiesDistance = self.player.size.height * 2.5
        
        // criando o inimigo do topo
        let enemyTop = SKSpriteNode(imageNamed: "enemytop\(enemyNumber)")
        // largura e altura do inimigo p/ facilitar escrita
        let enemyWidth = enemyTop.size.width
        let enemyHeight = enemyTop.size.height
        
        // colocando a posição
        enemyTop.position = CGPoint(x: size.width + enemyWidth/2, y: size.height - initialPosition + enemyHeight/2)
        enemyTop.zPosition = 1
        
        // corpo físico
        enemyTop.physicsBody = SKPhysicsBody(rectangleOf: enemyTop.size)
        enemyTop.physicsBody?.isDynamic = false
        
        // contato e colisão
        enemyTop.physicsBody?.categoryBitMask = enemyCategory
        enemyTop.physicsBody?.contactTestBitMask = playerCategory
        
        // inimigo da base
        
        let enemyBottom = SKSpriteNode(imageNamed: "enemybottom\(enemyNumber)")
        
        // colocando a posição
        enemyBottom.position = CGPoint(x: size.width + enemyWidth/2, y: enemyTop.position.y - enemyTop.size.height - enemiesDistance)
        enemyBottom.zPosition = 1
        
        // corpo físico
        enemyBottom.physicsBody = SKPhysicsBody(rectangleOf: enemyBottom.size)
        enemyBottom.physicsBody?.isDynamic = false
        
        // contato e colisão
        enemyBottom.physicsBody?.categoryBitMask = enemyCategory
        enemyBottom.physicsBody?.contactTestBitMask = playerCategory
        
        // Criando um objeto para a área entre dois inimigos, aquilo contabiliza o sucesso
        let laser = SKNode()
        laser.position = CGPoint(x: enemyTop.position.x + enemyWidth/2, y: enemyTop.position.y - enemyTop.size.height/2 - enemiesDistance/2)
        // criando corpo
        laser.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 1, height: enemiesDistance))
        // não é afetado pela gravidade
        laser.physicsBody?.isDynamic = false
        // categoria
        laser.physicsBody?.categoryBitMask = scoreCategory
        
        
        // as animações de movimentação
        let distance = size.width + enemyWidth
        let duration = Double(distance)/velocity
        let moveAction = SKAction.moveBy(x: -distance, y: 0, duration: duration)
        // tirando da tela
        let removeAction = SKAction.removeFromParent()
        let sequenceAction = SKAction.sequence([moveAction, removeAction])
        
        enemyTop.run(sequenceAction)
        enemyBottom.run(sequenceAction)
        laser.run(sequenceAction)
        
        // Adding
        addChild(enemyTop)
        addChild(enemyBottom)
        addChild(laser)
        
    }
    
    func gameOver(){
        // parando o timer
        timer.invalidate()
        //zerando a rotação do player
        player.zRotation = 0
        // colocando a imagem de perdeu
        player.texture = SKTexture(imageNamed: "playerDead")
        // parando todas as animações, varrendo cada nó
        for node in self.children {
            node.removeAllActions()
        }
        // tirando a dinamicidade do corpo
        player.physicsBody?.isDynamic = false
        // finalizadno o jogo
        gameFinished = true
        gameStarted = false
        
        // aparecendo mensagem de gameOver
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
            // formatando o label
            let lbGameOver = SKLabelNode(fontNamed: "Chalkduster")
            lbGameOver.fontColor = .red
            lbGameOver.fontSize = 40
            lbGameOver.text = "Game Over"
            lbGameOver.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
            lbGameOver.zPosition = 5
            
            self.addChild(lbGameOver)
            self.restart = true
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // se o jogo não estiver finalizado
        if !gameFinished {
            if !gameStarted {
                // tirando a intro da tela
                intro.removeFromParent()
               // addScore()
                
                // adicionando física ao player
                player.physicsBody = SKPhysicsBody(circleOfRadius: player.size.width/2 - 10)
                // sofrendo a ação da gravidade, deixando dinamico
                player.physicsBody?.isDynamic = true
                // permitindo rotação
                player.physicsBody?.allowsRotation = true
                // aplicar uma força nele
                player.physicsBody?.applyImpulse(CGVector(dx: 0, dy: flyForce))
                // adicionando a categoria para configurar a colisão
                player.physicsBody?.categoryBitMask = playerCategory
                // dizendo com que categoria se comporta por contato
                player.physicsBody?.contactTestBitMask = scoreCategory
                // como que categoria se comporta por colisão
                player.physicsBody?.collisionBitMask = enemyCategory
                
                
                gameStarted = true
                
                // add os inimigos depois de um tempo
                // chama o método de spawnar
                timer = Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true) { (timer) in
                    self.spawnEnemies()
                }
                
            } else {
                // se o jogador tocar de novo, vai cair aqui
                // zerando a velocidade pra aplicar o impulso
                player.physicsBody?.velocity = CGVector.zero
                // Aplicando o impulso
                player.physicsBody?.applyImpulse(CGVector(dx: 0, dy: flyForce))
            }
            // se o jogo finalizou
        } else {
            if restart {
                // reiniciar o jogo
                restart = false
                // Mostrar a cena do começo
                newtonViewModel?.presentScene()
            }
        }
    }
    
    
    
    // Executado o tempo inteiro no game
    
    override func update(_ currentTime: TimeInterval) {
        // criando um pouquinho de rotação
        if gameStarted {
            let yVelocity = player.physicsBody!.velocity.dy * 0.001 as CGFloat
            player.zRotation = yVelocity
        }
    }
    
    
}

// Adicionando o delegate para informar quando rolou o contato

extension NewtonScene: SKPhysicsContactDelegate {
    // Quando o contato começar
    func didBegin(_ contact: SKPhysicsContact) {
        // se o jogo estiver começado
        if gameStarted {
            // se o corpo A estiver na categoria de score OU o corpo B na de score
            if contact.bodyA.categoryBitMask == scoreCategory || contact.bodyB.categoryBitMask == scoreCategory {
                // significa que aumentou um ponto
                score += 1
              //  scoreLabel.text = "\(score)"
                // som de ponto
                run(scoreSound)
            } else if contact.bodyA.categoryBitMask == enemyCategory || contact.bodyB.categoryBitMask == enemyCategory {
                // Se a colisão for com um enemy, é gameOver
                gameOver()
                // som gameOver
                run(gameOverSound)
            }
        }
    }
}


