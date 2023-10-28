//
//  GameViewController.swift
//  Balloid
//
//  Created by MrNocturne on 10/27/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: Issue bg is not fitting screen
        
        let scene = GameScene(size: CGSize(width: 2048, height: UIScreen.main.bounds.width))
        scene.scaleMode = .aspectFill
        let skiView = view as! SKView
        skiView.showsFPS = true
        skiView.showsNodeCount = true
        skiView.showsPhysics = true
        skiView.ignoresSiblingOrder = true
        skiView.presentScene(scene)
    }
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            return .allButUpsideDown
//        } else {
//            return .all
//        }
//    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
