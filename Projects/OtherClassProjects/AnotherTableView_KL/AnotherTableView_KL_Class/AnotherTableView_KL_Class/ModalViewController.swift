//
//  ModalViewController.swift
//  AnotherTableView_KL_Class
//
<<<<<<< HEAD
//  Created by Rafael Rodriguez on 4/24/18.
=======
//  Created by Kevin Lopez on 4/24/18.
>>>>>>> upstream/master
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
<<<<<<< HEAD
    
    var viewModel: DetailViewModel!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = viewModel.title
        messageLabel.text = viewModel.description
=======

    var viewModel: DetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
>>>>>>> upstream/master

    }

    @IBAction func dismissButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
<<<<<<< HEAD
    
=======
>>>>>>> upstream/master
}
