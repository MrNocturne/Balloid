//
//  GameScene.swift
//  Balloid
//
//  Created by MrNocturne on 10/27/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //MARK: - Properities
    //MARK: - System
    //MARK: - Configuration
    //MARK: - System
    
    override func didMove(to view: SKView) {
        setUpNodes()
    }
}

extension GameScene {
    func setUpNodes(){
        createBG()
    }
    
    func createBG(){
        let bg = SKSpriteNode(imageNamed: "bg")
        bg.anchorPoint = .zero
        bg.position = .zero
        bg.zPosition = 1.0
        addChild(bg)
    }
}
