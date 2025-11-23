//
//  AdventureModel.swift
//  assignment5
//
//  Created by Matthew Ledford on 11/23/25.
//

import Foundation

enum NodeID {
    case entrance
    case goldRoom
    case diamondRoom
    case goldSafeEnd
    case goldPhoneEnd
    case diamondAtticEnd
    case diamondBasementEnd
}

struct AdventureNode {
    let id: NodeID
    let text: String
    let choice1Text: String?
    let choice2Text: String?
    let nextForChoice1: NodeID?
    let nextForChoice2: NodeID?
}

class AdventureStory {
    private let nodes: [NodeID: AdventureNode]
    private(set) var currentNode: AdventureNode
    
    init() {
        let entrance = AdventureNode(
            id: .entrance,
            text: "You enter a room with two strange doors. One is golden, one is covered in diamonds.",
            choice1Text: "Enter the golden door",
            choice2Text: "Enter the diamond door",
            nextForChoice1: .goldRoom,
            nextForChoice2: .diamondRoom
        )
        
        let goldRoom = AdventureNode(
            id: .goldRoom,
            text: "You are in the gold room. A safe sits open and a phone is ringing on the wall.",
            choice1Text: "Open the unlocked safe",
            choice2Text: "Answer the ringing phone",
            nextForChoice1: .goldSafeEnd,
            nextForChoice2: .goldPhoneEnd
        )
        
        let diamondRoom = AdventureNode(
            id: .diamondRoom,
            text: "You are in the diamond room. You see stairs to the attic and stairs to the basement.",
            choice1Text: "Check the attic",
            choice2Text: "Check the basement",
            nextForChoice1: .diamondAtticEnd,
            nextForChoice2: .diamondBasementEnd
        )
        
        let goldSafeEnd = AdventureNode(
            id: .goldSafeEnd,
            text: "You open the safe and find 10 pounds of gold!",
            choice1Text: "Play again",
            choice2Text: nil,
            nextForChoice1: .entrance,
            nextForChoice2: nil
        )
        
        let goldPhoneEnd = AdventureNode(
            id: .goldPhoneEnd,
            text: "You answer the phone… it's a telemarketer.",
            choice1Text: "Try again",
            choice2Text: nil,
            nextForChoice1: .entrance,
            nextForChoice2: nil
        )
        
        let diamondAtticEnd = AdventureNode(
            id: .diamondAtticEnd,
            text: "You climb to the attic and find a room full of diamonds!",
            choice1Text: "Play again",
            choice2Text: nil,
            nextForChoice1: .entrance,
            nextForChoice2: nil
        )
        
        let diamondBasementEnd = AdventureNode(
            id: .diamondBasementEnd,
            text: "You go to the basement and only find cleaning supplies.",
            choice1Text: "Try again",
            choice2Text: nil,
            nextForChoice1: .entrance,
            nextForChoice2: nil
        )
        
        nodes = [
            .entrance: entrance,
            .goldRoom: goldRoom,
            .diamondRoom: diamondRoom,
            .goldSafeEnd: goldSafeEnd,
            .goldPhoneEnd: goldPhoneEnd,
            .diamondAtticEnd: diamondAtticEnd,
            .diamondBasementEnd: diamondBasementEnd
        ]
        
        currentNode = entrance
    }
    
    func choose(option: Int) {
        let nextID: NodeID?
        
        switch option {
        case 1:
            nextID = currentNode.nextForChoice1
        case 2:
            nextID = currentNode.nextForChoice2
        default:
            nextID = nil
        }
        
        if let id = nextID, let node = nodes[id] {
            currentNode = node
        }
    }
    
    func reset() {
        if let entranceNode = nodes[.entrance] {
            currentNode = entranceNode
        }
    }
}
