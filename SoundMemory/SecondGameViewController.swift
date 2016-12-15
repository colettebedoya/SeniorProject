//
//  SecondGameViewController.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/2/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


class SecondGameViewController: UIViewController, AVAudioPlayerDelegate {
    
     
   
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var nextPage: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button1.backgroundColor = UIColor.green
        button2.backgroundColor = UIColor.orange
        button3.backgroundColor = UIColor.red
        button4.backgroundColor = UIColor.blue
        nextPage.isHidden = true
    }
   
    @IBAction func button4Clicked(_ sender: AnyObject) {
    
            if button4.backgroundColor == UIColor.blue{
                button4.backgroundColor = UIColor.orange
                didWin()
            }
            else if button4.backgroundColor == UIColor.orange{
                button4.backgroundColor = UIColor.red
                didWin()
            }
            else if button4.backgroundColor == UIColor.red{
                button4.backgroundColor = UIColor.green
            }
            else if button4.backgroundColor == UIColor.green{
                button4.backgroundColor = UIColor.blue
            }
    
        }
    @IBAction func button3Clicked(_ sender: AnyObject) {
    
            if button3.backgroundColor == UIColor.blue{
                button3.backgroundColor = UIColor.orange
            }
            else if button3.backgroundColor == UIColor.orange{
                button3.backgroundColor = UIColor.red
            }
            else if button3.backgroundColor == UIColor.red{
                button3.backgroundColor = UIColor.green
                didWin()
            }
            else if button3.backgroundColor == UIColor.green{
                button3.backgroundColor = UIColor.blue
                didWin()
            }
    
        }
    @IBAction func button2Clicked(_ sender: AnyObject) {
    
            if button2.backgroundColor == UIColor.blue{
                button2.backgroundColor = UIColor.orange
            }
            else if button2.backgroundColor == UIColor.orange{
                button2.backgroundColor = UIColor.red
            }
            else if button2.backgroundColor == UIColor.red{
                button2.backgroundColor = UIColor.green
                didWin()
            }
            else if button2.backgroundColor == UIColor.green{
                button2.backgroundColor = UIColor.blue
                didWin()
            }
    
        }
    @IBAction func button1Clicked(_ sender: AnyObject) {
    
            if button1.backgroundColor == UIColor.blue{
                button1.backgroundColor = UIColor.orange
                didWin()
            }
            else if button1.backgroundColor == UIColor.orange{
                button1.backgroundColor = UIColor.red
                didWin()
            }
            else if button1.backgroundColor == UIColor.red{
                button1.backgroundColor = UIColor.green
            }
            else if button1.backgroundColor == UIColor.green{
                button1.backgroundColor = UIColor.blue
            }
    
        }
    
        func didWin(){
            if button1.backgroundColor == UIColor.orange && button2.backgroundColor == UIColor.green && button3.backgroundColor == UIColor.blue && button4.backgroundColor == UIColor.red
            {
                button1.isEnabled = false
                button2.isEnabled = false
                button3.isEnabled = false
                button4.isEnabled = false
                nextPage.isHidden = false
            }
        }
}



