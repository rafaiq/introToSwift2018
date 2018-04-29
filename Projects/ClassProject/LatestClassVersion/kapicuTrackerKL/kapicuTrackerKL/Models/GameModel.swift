//
//  GameModel.swift
//  kapicuTrackerKL
//
//  Created by Rafael Rodriguez on 4/26/18.
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import Foundation

enum NumberOfPlayers: Int {
    case two = 2
    case three = 3
    case four = 4
    
    var txt: String {
        switch self {
        case .two:
            return "Two"
        case .three:
            return "Three"
        case .four:
            return "Four"
        }
    }
}

enum PlayerToConfigure {
    case one
    case two
    case three
    case four
    case allConfigured
}

struct GameModel {
    var numberOftPlayer: NumberOfPlayers = .two
    var firstPlayer: String = ""
    var secondPlayer: String = ""
    var thirdPlayer: String = ""
}

extension GameModel {
    private var isTeamPlayer: Bool {
        return numberOftPlayer == .four
    }
}
