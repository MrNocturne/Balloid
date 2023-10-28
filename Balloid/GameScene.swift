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
        createLand()
    }
    
    func createBG(){
        let bg = SKSpriteNode(imageNamed: "bg")
        bg.anchorPoint = .zero
        bg.position = .zero
        bg.zPosition = -3.0
        addChild(bg)
    }
    
    func createLand() {
        for i in 0...2 {
            let ground = SKSpriteNode(imageNamed: "land-ic")
            ground.name = "Land"
            ground.xScale = CGFloat(1)
            ground.anchorPoint = .zero
            ground.zPosition = 1.0
            ground.position = CGPoint(x: CGFloat(i)*ground.frame.width , y: 200.0)
            addChild(ground)
        }
    }
}

