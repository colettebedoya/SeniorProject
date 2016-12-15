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

class MayanScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var scnScene: SCNScene!
    override func didMove(to view: SKView) {
        
        let mayanScreen = SKSpriteNode(imageNamed: "mayan6")

        let torch = SKEmitterNode (fileNamed: "Fire")
        //let rain = SCNParticleSystem(named: "Rain", inDirectory: nil)!
       // scnScene.addParticleSystem(rain, transform: nil)
        self.addChild(mayanScreen)
        self.addChild(torch!)
        
        }
        
    }
