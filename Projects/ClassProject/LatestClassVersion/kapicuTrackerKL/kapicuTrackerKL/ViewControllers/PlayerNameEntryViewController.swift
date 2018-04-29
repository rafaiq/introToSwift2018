//
//  PlayerNameEntryViewController.swift
//  kapicuTrackerKL
//
//  Created by Rafael Rodriguez on 4/26/18.
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import UIKit

class PlayerNameEntryViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var gameModel: GameModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Player name Entry"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextButtonPressed))
        
        //made to a func UIViewController in UIVIewnavigationItem.rightBarButtonItem?.tintColor = .gray
        configureNextBarButton()
    }
    
    @objc private func nextButtonPressed() {
        
    }
    

}
