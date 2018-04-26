//
//  ModalViewController.swift
//  AnotherTableView_KL_Class
//
//  Created by Rafael Rodriguez on 4/24/18.
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    var viewModel: DetailViewModel!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = viewModel.title
        messageLabel.text = viewModel.description

    }

    @IBAction func dismissButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
