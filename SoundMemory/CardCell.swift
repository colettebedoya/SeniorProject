//
//  CardCell.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/3/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class CardCell: UICollectionViewCell {
    fileprivate let frontImageView: UIImageView!
    fileprivate var cardImageName: String!
    fileprivate var backImageName: String!
    
    override init(frame: CGRect) {
        
        frontImageView = UIImageView(frame: CGRect(origin: CGPoint.zero, size: frame.size))
        super.init(frame: frame)
        contentView.addSubview(frontImageView)
        contentView.backgroundColor = UIColor.clear
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func renderCardName(_ cardImageName: String, backImageName: String){
        self.cardImageName = cardImageName
        self.backImageName = backImageName
        frontImageView.image = UIImage(named: self.backImageName)
    }
    
    func upturn() {
        UIView.transition(with: contentView,
                          duration: 1,
                          options: .transitionFlipFromRight,
                          animations: {
                            self.frontImageView.image = UIImage(named: self.cardImageName)
            },
                          completion: nil)
    }
    
    func downturn() {
        UIView.transition(with: contentView,
                          duration: 1,
                          options: .transitionFlipFromLeft,
                          animations: {
                            self.frontImageView.image = UIImage(named: self.backImageName)
            },
                          completion: nil)
    }
    
    func remove() {
        UIView.animate(withDuration: 1,
                       animations: {
                        self.alpha = 0
            },
                       completion: { completed in
                        self.isHidden = true
        })
    }
    
}
