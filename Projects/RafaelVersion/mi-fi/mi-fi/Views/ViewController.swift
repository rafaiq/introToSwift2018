//
//  ViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/22/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Wi-Fi"
        let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.BrandColors.BrightWhite]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

