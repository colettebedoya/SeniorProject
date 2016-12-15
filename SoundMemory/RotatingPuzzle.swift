//
//  RotatingPuzzle.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/9/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation
import UIKit

var count1 = 0
var count2 = 0
var count3 = 0
var count4 = 0
var count5 = 0
var count6 = 0
var count7 = 0
var count8 = 0
var count9 = 0


class RotatingPuzzle: UIViewController {
    
    @IBOutlet weak var won: UIButton!

    @IBOutlet weak var puzzle1: UIButton!
 
    @IBOutlet weak var puzzle2: UIButton!

    @IBOutlet weak var puzzle3: UIButton!
    
    @IBOutlet weak var puzzle4: UIButton!
    @IBOutlet weak var puzzle5: UIButton!
    @IBOutlet weak var puzzle6: UIButton!
    
    @IBOutlet weak var puzzle7: UIButton!
    
    @IBOutlet weak var puzzle8: UIButton!
    @IBOutlet weak var puzzle9: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        won.isHidden = true
        }
    
   
    @IBAction func rotate1(_ sender: AnyObject) {
        if count1 < 4 {
            self.puzzle1.transform = self.puzzle1.transform.rotated(by: (CGFloat(M_PI_2)))
            count1 = count1 + 1
            print("count1",count1, separator: "-", terminator: "\n")
            rotateWin()
        }
        else
        {   count1 = 0
            self.puzzle1.transform = self.puzzle1.transform.rotated(by: (CGFloat(M_PI_2)))
            count1 = count1 + 1
            print("count1",count1, separator: "-", terminator: "\n")
            rotateWin()
            }
    }

    @IBAction func rotate2(_ sender: AnyObject) {
        if count2 < 4 {
            self.puzzle2.transform = self.puzzle2.transform.rotated(by: (CGFloat(M_PI_2)))
            count2 = count2 + 1
            print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        else
        {   count2 = 0
            self.puzzle2.transform = self.puzzle2.transform.rotated(by: (CGFloat(M_PI_2)))
            count2 = count2 + 1
            print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
    }

    @IBAction func rotate3(_ sender: AnyObject) {
        if count3 < 4 {
        self.puzzle3.transform = self.puzzle3.transform.rotated(by: (CGFloat(M_PI_2)))
            count3 = count3 + 1
            rotateWin()
        }
        else
        {   count3 = 0
            self.puzzle3.transform = self.puzzle3.transform.rotated(by: (CGFloat(M_PI_2)))
            count3 = count3 + 1
           // print("count3",count3, separator: "-", terminator: "\n")
            rotateWin()
        }
    }
    
    @IBAction func rotate5(_ sender: AnyObject) {
        if count5 < 4 {
                self.puzzle5.transform = self.puzzle5.transform.rotated(by: (CGFloat(M_PI_2)))
                count5 = count5 + 1
               //print("count2",count2, separator: "-", terminator: "\n")
                rotateWin()
            }
            else
            {   count5 = 0
                self.puzzle5.transform = self.puzzle5.transform.rotated(by: (CGFloat(M_PI_2)))
                count5 = count5 + 1
                //print("count2",count2, separator: "-", terminator: "\n")
                rotateWin()
            }
    }
    
    @IBAction func rotate6(_ sender: AnyObject) {
        if count6 < 4 {
            self.puzzle6.transform = self.puzzle6.transform.rotated(by: (CGFloat(M_PI_2)))
            count6 = count6 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        else{
            count6 = 0
            self.puzzle6.transform = self.puzzle6.transform.rotated(by: (CGFloat(M_PI_2)))
            count6 = count6 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }

    }
    

    @IBAction func rotate4(_ sender: AnyObject) {
       
        if count4 < 4 {
            self.puzzle4.transform = self.puzzle4.transform.rotated(by: (CGFloat(M_PI_2)))
            count4 = count4 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        else{
            count4 = 0
             self.puzzle4.transform = self.puzzle4.transform.rotated(by: (CGFloat(M_PI_2)))
            count4 = count4 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        

    }
    
    @IBAction func rotate7(_ sender: AnyObject) {
        if count7 < 4 {
            self.puzzle7.transform = self.puzzle7.transform.rotated(by: (CGFloat(M_PI_2)))
            count7 = count7 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        else {
            count7 = 0
            self.puzzle7.transform = self.puzzle7.transform.rotated(by: (CGFloat(M_PI_2)))
            count7 = count7 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }

        
    }
    
    @IBAction func rotate8(_ sender: AnyObject) {
        if count8 < 4 {
            self.puzzle8.transform = self.puzzle8.transform.rotated(by: (CGFloat(M_PI_2)))
            count8 = count8 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        else {
            count8 = 0
            self.puzzle8.transform = self.puzzle8.transform.rotated(by: (CGFloat(M_PI_2)))
            count8 = count8 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }


    }
    
    @IBAction func rotate9(_ sender: AnyObject) {
        if count9 < 4 {
            self.puzzle9.transform = self.puzzle9.transform.rotated(by: (CGFloat(M_PI_2)))
            count9 = count9 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }
        else {
            count9 = 0
            self.puzzle9.transform = self.puzzle9.transform.rotated(by: (CGFloat(M_PI_2)))
            count9 = count9 + 1
            //print("count2",count2, separator: "-", terminator: "\n")
            rotateWin()
        }

        
    }

    func rotateWin(){
        if count1 == 1 && count2 == 2 && count3 == 3 && count4 == 3 && count5 == 2 && count6 == 3 && count7 == 1 && count8 == 1 && count9 == 1
        {
           self.performSegue(withIdentifier: "toSoundGame", sender: self)
            //won.isHidden = false
        }
    }
}
