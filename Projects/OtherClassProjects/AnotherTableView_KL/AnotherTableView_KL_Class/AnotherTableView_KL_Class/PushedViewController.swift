//
<<<<<<< HEAD
//  PushViewController.swift
//  AnotherTableView_KL_Class
//
//  Created by Rafael Rodriguez on 4/24/18.
=======
//  PushedViewController.swift
//  AnotherTableView_KL_Class
//
//  Created by Kevin Lopez on 4/24/18.
>>>>>>> upstream/master
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import UIKit

class PushedViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
<<<<<<< HEAD
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
=======
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var viewModel: DetailViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
>>>>>>> upstream/master
        titleLabel.text = viewModel.title
        messageLabel.text = viewModel.description
    }
    
<<<<<<< HEAD
    var viewModel: DetailViewModel!
=======
>>>>>>> upstream/master
}
