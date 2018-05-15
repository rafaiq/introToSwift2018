//
//  ViewController.swift
//  Pokemon_RRA
//
//  Created by Rafael Rodriguez on 5/3/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var pokemonList = [Pokemon] ()
    
    let queryService = QueryService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Pokedex"
        
        queryService.fetchOriginalPokemon { (pokemon, error) in
            self.pokemonList = pokemon ?? []
            self.tableView.reloadData()
        }
        
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            let pokemon = pokemonList[indexPath.row]
            cell.textLabel?.text = pokemon.name
            return cell
        }
    
}

