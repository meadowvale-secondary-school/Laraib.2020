//
//  Sign.swift
//  RPS
//
//  Created by School on 2020-04-16.
//  Copyright © 2020 Apple Inc. All rights reserved.
//
import GameplayKit
import Foundation

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1{
        return .paper
    } else {
        return .scissor
    }    
}

enum Sign {
    case rock
    case paper
    case scissor
    
    var signEmojis: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissor:
            return "✌️"
        }

        }
        
    func getSigns(_ opponent:Sign)-> GameState {
        switch self {
        case .rock:
            switch opponent {
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .scissor:
                return GameState.win
            }
        case .paper:
            switch opponent {
            case .rock:
                return GameState.win
            case .paper:
                return GameState.draw
            case .scissor:
                return GameState.lose
            }
        case .scissor:
                switch opponent{
                case .rock:
                    return GameState.lose
                case .paper:
                    return GameState.win
                case .scissor:
                    return GameState.draw
            }
    }
}
}

