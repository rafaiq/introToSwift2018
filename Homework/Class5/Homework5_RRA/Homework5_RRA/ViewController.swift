//
//  ViewController.swift
//  Homework5_RRA
//
//  Created by Rafael Rodriguez on 4/28/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redColorViewModels: [ColorViewModel] = []

    @IBOutlet weak var segmentControl: UISegmentedControl! {
        didSet {
            
            //addTarget(self, action: #selector(segmentControlValueChanged), forControlEvents: .touchUpInside)
            segmentControl.addTarget(self, action: #selector(segmentControlValueChanged), for: .valueChanged)
        
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            
            tableView.delegate = self as! UITableViewDelegate
            tableView.dataSource = self as! UITableViewDataSource
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIConfig()
        
        let colorManager = ColorManager.init(randomRGBValue: 2)
        
        redColorViewModels = colorManager.generateRedColors(100)
        tableView.reloadData()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //custom func//
    
    //set all UI
    private func UIConfig() {
        title = "Color Table"
    }
    
    //all action when select a segment
    @objc private func segmentControlValueChanged() {
        print(segmentControl.selectedSegmentIndex)
    }
    
    


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return redColorViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let viewModel = viewModels[indexPath.row]
        //let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? DetailTableViewCell
        //cell?.configureWith(viewModel)
        //return cell ?? UITableViewCell()
        
        let colorViewModel = redColorViewModels[indexPath.row]
        let cell = UITableViewCell()
        cell.backgroundColor = colorViewModel.color
        //cell.textLabel = colorViewModel.name
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {}


