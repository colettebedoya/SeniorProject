//
//  UIViewController+Extra.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/3/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

extension UIViewController {
    func execAfter(_ delay: Double, block: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: block)
    }
}

