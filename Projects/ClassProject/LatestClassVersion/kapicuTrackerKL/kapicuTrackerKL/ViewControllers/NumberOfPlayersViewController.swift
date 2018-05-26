//
//  NumberOfPlayersViewController.swift
//  kapicuTrackerKL
//
//  Created by Kevin Lopez on 4/3/18.
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import UIKit

//<<<<<<< HEAD
////enum NumberOfPlayers: Int {
////    case two = 2
////    case three = 3
////    case four = 4
////
////    var txt: String {
////        switch self {
////        case .two:
////            return "Two"
////        case .three:
////            return "Three"
////        case .four:
////            return "Four"
////        }
////    }
////}
//
//=======
//>>>>>>> upstream/master
class NumberOfPlayersViewController: UIViewController {
    
    @IBOutlet var playerButtons: [UIButton]! {
        didSet {
            for button in playerButtons {
                guard let numberOfPlayers = NumberOfPlayers(rawValue: button.tag) else {
                    continue
                }
                button.apply(ButtonStyle.standard, with: numberOfPlayers.txt)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackBarButton()
        title = "Number Of Players"
        //to be set in next View
        configureBackBarButton()
        configureNextBarButton()
    }
    
    @IBAction func playerButtonPressed(_ sender: UIButton) {
        var gameModel = GameModel()
        gameModel.numberOftPlayer = NumberOfPlayers(rawValue: sender.tag) ?? .two
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        //TODO
        let playerNameVC = storyboard.instantiateViewController(withIdentifier: "playerName") as! PlayerNameEntryViewController
        navigationController?.pushViewController(playerNameVC, animated: true)
    }
    
//<<<<<<< HEAD
//=======
    @IBAction func playerButtonPressed(_ sender: UIButton) {
        let kapicuGame = KapicuGame(sender.tag)
        let playerNameVC = storyboard?.instantiateViewController(withIdentifier: "playerName") as! PlayerNameEntryViewController
        playerNameVC.kapicuGame = kapicuGame
        navigationController?.pushViewController(playerNameVC, animated: true)
    }
//>>>>>>> upstream/master
}
