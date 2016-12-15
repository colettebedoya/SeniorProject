//
//  GameScene.swift
//  TestParticles
//
//  Created by Colette Bedoya on 11/11/16.
//  Copyright © 2016 ColetteBedoya. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import SceneKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var scnScene: SCNScene!
    override func didMove(to view: SKView) {
        
        let mainScreen = SKSpriteNode(imageNamed: "mayan6")

        let torch = SKEmitterNode (fileNamed: "Fire")
        torch?.position = CGPoint(x: 120, y: 15)
        torch?.setScale(0.5)
        
        let torch2 = SKEmitterNode (fileNamed: "Fire")
        torch2?.position = CGPoint(x: -15, y: 15)
        torch2?.setScale(0.35)
       
        let torch3 = SKEmitterNode (fileNamed: "Fire")
        torch3?.position = CGPoint(x: -40, y: 10)
        torch3?.setScale(0.45)
        
        
        self.addChild(mainScreen)
        self.addChild(torch!)
        self.addChild(torch2!)
        self.addChild(torch3!)
        
        }
        
    }
