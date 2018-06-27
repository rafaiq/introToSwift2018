//
//  MoreViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/26/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWebView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension MoreViewController: UIWebViewDelegate {
    
    private func loadWebView() {
        //set fullscreen in the View
        let myWebView:UIWebView = UIWebView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        
        self.view.addSubview(myWebView)
        
        myWebView.delegate = self
        
        //Load web site into my web view
        let myURL = URL(string: "https://data.pr.gov/Desarrollo-e-Infraestructura/Plaza-wifi-data/smi4-9tnp")
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        myWebView.loadRequest(myURLRequest)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: myWebView, action: #selector(myWebView.reload))
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        
    }
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        
    }
    
}
