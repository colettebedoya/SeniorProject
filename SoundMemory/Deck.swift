//
//  Deck.swift
//  SoundMemory
//
//  Created by Colette Bedoya on 11/3/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation
enum Suit: CustomStringConvertible {
    case spades, hearts, diamonds, clubs
    var description: String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

enum Rank: Int, CustomStringConvertible {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    var description: String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}


struct Card: CustomStringConvertible, Equatable {
    fileprivate let rank: Rank
    fileprivate let suit: Suit
    
    var description: String {
        return "\(rank.description)_of_\(suit.description)"
    }
}
func ==(card1: Card, card2: Card) -> Bool {
    return card1.rank == card2.rank && card1.suit == card2.suit
}

struct Deck {
    fileprivate var cards = [Card]()
    
    static func full() -> Deck {
        var deck = Deck()
        for i in Rank.ace.rawValue...Rank.king.rawValue {
            for suit in [Suit.spades, .hearts,
                         .clubs, .diamonds] {
                            let card = Card(rank: Rank(rawValue: i)!,
                                            suit: suit)
                            deck.cards.append(card)
            }
        }
        return deck
    }
    
    // Fisher-Yates (fast and uniform) shuffle
    func shuffled() -> Deck {
        var list = cards
        for i in 0..<(list.count - 1) {
            
            let j = Int(arc4random_uniform(UInt32(list.count - i))) + i
            print(i,j, separator: "-", terminator: "\n")
            if i != j {
                swap(&list[i], &list[j])
            }
        }
        return Deck(cards: list)
    }
    
    func deckOfNumberOfCards(_ num: Int) -> Deck {
        return Deck(cards: Array(cards[0..<num]))
    }
}

extension Deck {
    subscript(index: Int) -> Card {
        get {
            return cards[index]
        }
    }
    
    var count: Int {
        get {
            return cards.count
        }
    }
}

func +(deck1: Deck, deck2: Deck) -> Deck {
    return Deck(cards: deck1.cards + deck2.cards)
}
