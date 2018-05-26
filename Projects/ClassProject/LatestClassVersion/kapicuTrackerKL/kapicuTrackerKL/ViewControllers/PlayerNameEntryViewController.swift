//
//  PlayerNameEntryViewController.swift
//  kapicuTrackerKL
//
//<<<<<<< HEAD
////  Created by Rafael Rodriguez on 4/26/18.
//=======
//  Created by Kevin Lopez on 4/26/18.
//>>>>>>> upstream/master
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import UIKit

class PlayerNameEntryViewController: UIViewController {

//<<<<<<< HEAD
//    @IBOutlet weak var nameTextField: UITextField!
//
//    var gameModel: GameModel!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = "Player name Entry"
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextButtonPressed))
//
//        //made to a func UIViewController in UIVIewnavigationItem.rightBarButtonItem?.tintColor = .gray
//        configureNextBarButton()
//    }
//
//    @objc private func nextButtonPressed() {
//
//    }
//
//
//}
//=======
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.delegate = self
        }
    }
    
    var kapicuGame: KapicuGame!
    var playerToConfigure: PlayerToConfigure = .one
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = kapicuGame.navTitleFor(playerToConfigure)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextButtonPressed))
        navigationItem.rightBarButtonItem?.tintColor = .black
        navigationItem.rightBarButtonItem?.isEnabled = false
        nameTextField.placeholder = kapicuGame.placeholderFor(playerToConfigure)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        nameTextField.becomeFirstResponder()
    }

    @objc private func nextButtonPressed() {
        let nextPlayer = kapicuGame.nextPlayerToConfigure(playerToConfigure)
        let playerName = nameTextField.text!
        kapicuGame.updatePlayerName(playerName, playerToConfigure)
        
        configureBackBarButton(playerName)
        
        if nextPlayer == .allConfigured {
            print("Ready for next part of the flow")
        } else {
            presentNextPlayer(nextPlayer)
        }
    }
    
    private func presentNextPlayer(_ player: PlayerToConfigure) {
        let playerNameVC = storyboard?.instantiateViewController(withIdentifier: "playerName") as! PlayerNameEntryViewController
        playerNameVC.kapicuGame = kapicuGame
        playerNameVC.playerToConfigure = player
        navigationController?.pushViewController(playerNameVC, animated: true)
    }
    
    private func updateNextButtonState(_ name: String) {
        navigationItem.rightBarButtonItem?.isEnabled = !name.isEmpty
    }
}

extension PlayerNameEntryViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let expectedText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        updateNextButtonState(expectedText)
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//>>>>>>> upstream/master
