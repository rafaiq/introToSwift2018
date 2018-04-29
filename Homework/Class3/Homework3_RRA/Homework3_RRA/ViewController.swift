//
//  ViewController.swift
//  Homework3_RRA
//
//  Created by Rafael Rodriguez on 4/26/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //UI Controls
    @IBOutlet var menubuttons: [UIButton]!
    @IBOutlet weak var fromNameLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    //Local variable that hold message
    var messages: [Message] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //custom funtions//
        
        //edit all buttons in stack view ui properties
        editUIButtons()
        
        //set all navigation stuff
        configureNavigationBar()
        
        //upload data from model
        loadMessages()
        
        //edit values to buttons
        configureButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func editUIButtons() {
        for button in self.menubuttons {
            button.tintColor = .white
            button.backgroundColor = .black
            button.layer.borderWidth = 1
            
        }
    }
    
    private func configureNavigationBar() {
        
        title = "Message"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Refresh", style: .plain, target: self, action: #selector(refreshButtonPressed))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.darkGray
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editButtonPressed))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.darkGray
        navigationItem.rightBarButtonItem?.isEnabled = false
        
    }
    
    @objc private func refreshButtonPressed() {}
    @objc private func editButtonPressed() {}
    
    private func loadMessages(){
        messages = Message.defaultData
    }
    
    
    private func configureButtons() {
        for i in 0..<menubuttons.count {
            
            let menubutton = menubuttons[i]
            let index = menubutton.tag - 1
            
            let message = messages[index]
            menubutton.setTitle(message.fromName, for: .normal)
            
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let index = sender.tag - 1
        
        let message = messages[index]
        fromNameLabel.text = message.fromName
        bodyLabel.text = message.body
        stateLabel.text = "State: \(message.state)"
        
    }


}

