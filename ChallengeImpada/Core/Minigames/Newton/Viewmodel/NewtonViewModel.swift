//
//  NewtonViewModel.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class NewtonViewModel: UIViewController {

    // Referienciando nossa cena
    var stage: SKView!
    // música de fundo
    var musicPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Tratando a cena
        stage = view as? SKView
        // Previvindo erros de posição das coisas
        stage.ignoresSiblingOrder = true
        // Mostrando a cena
        presentScene()
    }
    
    // Método para tocar música
    func playMusic(){
        // se conseguir pegar uma url
        if let musicURL = Bundle.main.url(forResource: "music", withExtension: "m4a") {
            // constroi um music player
            musicPlayer = try! AVAudioPlayer(contentsOf: musicURL)
            // tocar indefinidamente
            musicPlayer.numberOfLoops = -1
            musicPlayer.volume = 0.3
            musicPlayer.play()
        }
    }
    
    func presentScene(){
        // criando a cena
        let scene = NewtonScene(size: CGSize(width: 320, height: 568))
        scene.newtonViewModel = self
        // dizendo que ela vai preencher toda tela
        scene.scaleMode = .aspectFill
        // Mosrando a cena no stage
        stage.presentScene(scene, transition: .doorsOpenVertical(withDuration: 0.5))
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
