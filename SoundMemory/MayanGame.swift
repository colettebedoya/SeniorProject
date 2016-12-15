//
//  MyanGame.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/4/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore


class MayanGame: UIViewController {
    
    @IBOutlet weak var win: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    


    @IBOutlet weak var button2: UIButton!


    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    
    @IBOutlet weak var button1pressed: UIButton!



    @IBOutlet weak var button2pressed: UIButton!

    @IBOutlet weak var button3pressed: UIButton!
    @IBOutlet weak var button4pressed: UIButton!
    @IBOutlet weak var button5pressed: UIButton!
    @IBOutlet weak var button6pressed: UIButton!
    @IBOutlet weak var button7pressed: UIButton!
    @IBOutlet weak var button8pressed: UIButton!
    @IBOutlet weak var button9pressed: UIButton!
    
    

    
    var win9 = 0
    var win8 = 0
    var win4 = 0
    var win5 = 0
    var win1 = 0
    var win2 = 0
    var win3 = 0
    var win6 = 0
    var win7 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        win.isHidden = false
        
        button1pressed.isHidden = true
        
    }
    
    func Didwin(){
        
        if win1 == 0 && win2 == 1 && win3 == 0 && win4 == 1 && win5 == 1 && win6 == 0 && win7 == 0 && win8 == 1 && win9 == 1{
            
            button1pressed.isEnabled = false
            button1.isEnabled = false
            button2pressed.isEnabled = false
            button2.isEnabled = false
            button3.isEnabled = false
            button3pressed.isEnabled = false
            button4.isEnabled = false
            button4pressed.isEnabled = false
            button5.isEnabled = false
            button5pressed.isEnabled = false
            button6.isEnabled = false
            button6pressed.isEnabled = false
            button7.isEnabled = false
            button7pressed.isEnabled = false
            button8.isEnabled = false
            button8pressed.isEnabled = false
            button9.isEnabled = false
            button9pressed.isEnabled = false
            
            self.performSegue(withIdentifier: "toNextRoom", sender: self)
        }
    }
 
    
    @IBAction func button2PressedIn(_ sender: AnyObject) {
        button2.isHidden = false
        button2pressed.isHidden = true
        win2 = 0
        Didwin()
    }
   
    @IBAction func button2Clicked(_ sender: AnyObject) {
        button2.isHidden = false
        button2pressed.isHidden = false
        button2.isHidden = true
        win2 = 1
        Didwin()
    }
    
    @IBAction func buttonPressedIn(_ sender: AnyObject) {
                  button1.isHidden = false
            button1pressed.isHidden = true
        win1 = 0
        Didwin()
 //       else {button1.isHidden = false}
    }
    
    @IBAction func button1Clicked(_ sender: AnyObject) {
               button1.isHidden = false
        
        
                button1pressed.isHidden = false
                button1.isHidden = true
                win1 = 1
                Didwin()
        
     
    }
 
    
   

    @IBAction func button3pressedIn(_ sender: AnyObject) {
      //  if Glyph3pressed == false{
            button3.isHidden = false
            button3pressed.isHidden = true
        win3 = 0
        Didwin()
         //   Glyph3pressed = true
     //   }

    }
    @IBAction func button3Clicked(_ sender: AnyObject) {
      //  if Glyph3pressed == true {
            button3pressed.isHidden = false
            button3.isHidden = true
            win3 = 1
            Didwin()
          //  Glyph3pressed = false
      //  }

    }
    
    @IBAction func button4pressedIn(_ sender: AnyObject) {
       // if Glyph4pressed == false{
            button4.isHidden = false
            button4pressed.isHidden = true
        win4 = 0
        Didwin()
          //  Glyph4pressed = true
    //    }
    }
    @IBAction func button4Clicked(_ sender: AnyObject) {
      //  if Glyph4pressed == true {
            button4pressed.isHidden = false
            button4.isHidden = true
            win4 = 1
            Didwin()
         //   Glyph4pressed = false
      //  }
    }
    
    @IBAction func button5pressedIn(_ sender: AnyObject) {
      //  if Glyph5pressed == false{
            button5.isHidden = false
            button5pressed.isHidden = true
        win5 = 0
        Didwin()
           // Glyph5pressed = true
      //  }
    }
    @IBAction func button5Clicked(_ sender: AnyObject) {
     //   if Glyph5pressed == true {
            button5pressed.isHidden = false
            button5.isHidden = true
            win5 = 1
            Didwin()
        //    Glyph5pressed = false
      //  }
    }
   
    
    @IBAction func button6pressedIn(_ sender: AnyObject) {
      //  if Glyph6pressed == false{
            button6.isHidden = false
            button6pressed.isHidden = true
        win6 = 0
        Didwin()
         //   Glyph6pressed = true
       // }
    }
    @IBAction func button6Clicked(_ sender: AnyObject) {
      //  if Glyph6pressed == true {
            button6pressed.isHidden = false
            button6.isHidden = true
            win6 = 1
            Didwin()
        //    Glyph6pressed = false
      //  }
    }
    
    
    @IBAction func button7pressedIn(_ sender: AnyObject) {
       // if Glyph7pressed == false{
            button7.isHidden = false
            button7pressed.isHidden = true
        win7 = 0
        Didwin()
         //   Glyph7pressed = true
      //  }
    }
    @IBAction func button7Clicked(_ sender: AnyObject) {
      //  if Glyph7pressed == true {
            button7pressed.isHidden = false
            button7.isHidden = true
            win7 = 1
            Didwin()
         //   Glyph7pressed = false
      //  }
    }
    
    
    @IBAction func button8pressedIn(_ sender: AnyObject) {
       // if Glyph8pressed == false{
            button8.isHidden = false
            button8pressed.isHidden = true
        win8 = 0
        Didwin()
         //   Glyph8pressed = true
      //  }
    }
    
    @IBAction func button8Clicked(_ sender: AnyObject) {
      //  if Glyph8pressed == true {
            button8pressed.isHidden = false
            button8.isHidden = true
            win8 = 1
            Didwin()
         //   Glyph8pressed = false
       // }
    }
    
    @IBAction func button9pressedIn(_ sender: AnyObject) {
      //  if Glyph9pressed == false{
            button9.isHidden = false
            button9pressed.isHidden = true
        win9 = 0
        Didwin()
        //    Glyph9pressed = true
     //   }
    }
    @IBAction func button9Clicked(_ sender: AnyObject) {
      //  if Glyph9pressed == true {
            button9pressed.isHidden = false
            button9.isHidden = true
            win9 = 1
            Didwin()
       //     Glyph9pressed = false
       // }
    }
    
    
    

}
