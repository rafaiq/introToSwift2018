//
//  ViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/22/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var publicButton: UIButton!
    @IBOutlet weak var privateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Wi-Fi"
        let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.BrandColors.BrightWhite]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        //Buttons
        let image_orange = UIImage(named: "wifi_orange_180.png")
        let image_green = UIImage(named: "wifi_green_180.png")
        
        //let button = UIButton()
        publicButton.frame = CGRect(x: 10, y: 100, width: 100, height: 100)
        publicButton.setBackgroundImage(image_orange, for: UIControlState.normal)
        publicButton.addTarget(self, action:#selector(ViewController.publicButtonPressed(_:)), for: .touchUpInside)
        
        privateButton.frame = CGRect(x: 10, y: 100, width: 100, height: 100)
        privateButton.setBackgroundImage(image_green, for: UIControlState.normal)
        privateButton.addTarget(self, action:#selector(ViewController.publicButtonPressed(_:)), for: .touchUpInside)
        
        self.view.addSubview(publicButton)
        self.view.addSubview(privateButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func publicButtonPressed(_ sender: UIButton) {
        print("public button was press")
    }
    
    @IBAction func privateButtonPressed(_ sender: UIButton) {
        print("public button was press")
    }
    
}

