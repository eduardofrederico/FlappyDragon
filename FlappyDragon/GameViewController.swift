//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Eduardo Frederico on 20/02/25.
//

import UIKit
import SpriteKit
import GameplayKit

var stage: SKView!

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        stage = view as! SKView
        stage.ignoresSiblingOrder = true
        
        presentScene()
    }
    func presentScene() {
        let scene = GameScene(size: CGSize(width: 320, height: 568))
        //comparar tamanho de tela do iPhone 5 com o iPhone 16 Pro
        scene.scaleMode = .aspectFill
        stage.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
