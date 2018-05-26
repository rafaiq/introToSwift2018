//
//  MoreViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/26/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit
import WebKit//for work with Web View

class MoreViewController: UIViewController, UIWebViewDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set fullscreen in the View
        let myWebView:UIWebView = UIWebView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        
        self.view.addSubview(myWebView)
        
        myWebView.delegate = self
        
        //Load web site into my web view
        let myURL = URL(string: "https://www.google.com")
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        myWebView.loadRequest(myURLRequest)
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        
    }
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        
    }

}
