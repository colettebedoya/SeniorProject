//
//  MemoryViewController.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/3/16.
//  Copyright © 2016 Training. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import SceneKit


class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var SecondGame: UIButton!
    
    
    fileprivate var collectionView: UICollectionView!
    fileprivate var deck: Deck!
    fileprivate var selectedIndexes = Array<IndexPath>()
    fileprivate var numberOfPairs = 0
    fileprivate var score = 0
    fileprivate let difficulty = "easy"
    var won = false
    let columns = CGFloat(4)
    let rows = CGFloat(3)
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
   
        setup()
        start()
        
        
            }
    
    
    fileprivate func start() {
        numberOfPairs = 0
        score = 0
        deck = createDeck(Int(columns * rows / 2))
        SecondGame.isHidden = false

        collectionView.reloadData()
    }
    
    fileprivate func createDeck(_ numCards: Int) -> Deck {
        let fullDeck = Deck.full().shuffled()
        let halfDeck = fullDeck.deckOfNumberOfCards(numCards)
        return (halfDeck + halfDeck).shuffled()
    }
}

// MARK: UICollectionViewDataSource
extension SecondViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return deck.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        
        let card = deck[(indexPath as NSIndexPath).row]
        cell.renderCardName(card.description, backImageName: "back")
        
        return cell
    }
}

// MARK: UICollectionViewDelegate
extension SecondViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedIndexes.count == 2 ||
            selectedIndexes.contains(indexPath) {
            return
        }
        selectedIndexes.append(indexPath)
        
        let cell = collectionView.cellForItem(at: indexPath) as! CardCell
        cell.upturn()
        
        if selectedIndexes.count < 2 {
            return
        }
        
        let card1 = deck[(selectedIndexes[0] as NSIndexPath).row]
        let card2 = deck[(selectedIndexes[1] as NSIndexPath).row]
        
        if card1 == card2 {
            numberOfPairs += 1
            checkIfFinished()
            removeCards()
        } else {
            score += 1
            turnCardsFaceDown()
        }
    }
}
// MARK: Actions
private extension SecondViewController {
    func checkIfFinished(){
        if numberOfPairs == deck.count/2 {
            showFinalPopUp()
        }
    }
    
 
    func showFinalPopUp() {
        execAfter(2.0) {
        self.performSegue(withIdentifier: "toMayanGame", sender: self)
        self.SecondGame.isHidden = false
        }

    }
    
    func removeCards(){
        execAfter(1.0) {
            self.removeCardsAtPlaces(self.selectedIndexes)
            self.selectedIndexes = []
        }
    }
    
    func turnCardsFaceDown(){
        execAfter(2.0) {
            self.downturnCardsAtPlaces(self.selectedIndexes)
            self.selectedIndexes = []
        }
    }
    
    func removeCardsAtPlaces(_ places: Array<IndexPath>){
        for index in selectedIndexes {
            let cardCell = collectionView.cellForItem(at: index) as! CardCell
            cardCell.remove()
        }
    }
    
    func downturnCardsAtPlaces(_ places: Array<IndexPath>){
        for index in selectedIndexes {
            let cardCell = collectionView.cellForItem(at: index)as! CardCell
            cardCell.downturn()
        }
    }
}



// MARK: Setup
private extension SecondViewController {
    func setup() {
        
        
        view.backgroundColor = UIColor.clear
        
        let ratio: CGFloat = 1.452
        let space: CGFloat = 5
        
       // let (columns, rows) = (4,3)
        let cardHeight: CGFloat = view.frame.height/rows - 2*space
        let cardWidth: CGFloat = cardHeight/ratio
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: space, left: space, bottom: space, right: space)
        layout.itemSize = CGSize(width: cardWidth, height: cardHeight)
        layout.minimumLineSpacing = space
        
        let covWidth = columns*(cardWidth + 2*space)
        let covHeight = rows*(cardHeight + space)
        
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: covWidth, height: covHeight), collectionViewLayout: layout)
        collectionView.center = view.center
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isScrollEnabled = false
        collectionView.register(CardCell.self, forCellWithReuseIdentifier: "cardCell")
        collectionView.backgroundColor = UIColor.clear
        
        self.view.addSubview(collectionView)
    }

}


