//
//  GameViewController.swift
//  TestParticles
//
//  Created by Colette Bedoya on 11/11/16.
//  Copyright © 2016 ColetteBedoya. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import SceneKit

class MayanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view1 = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene1 = SKScene(fileNamed: "MayanScene") {
                // Set the scale mode to scale to fit the window
                scene1.scaleMode = .aspectFill
                
                // Present the scene
                view1.presentScene(scene1)
            }
            
            view1.ignoresSiblingOrder = true
            
            view1.showsFPS = true
            view1.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
