//
//  PlazaViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 6/20/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class PlazaViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let queryService = QueryService()
    let appData = AppData.shared
    var plazaPublicaList: [PlazaPublica] {
        return appData.plazapublicaList
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Pokedex"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Load Next Page", style: .plain, target: self, action: #selector(loadOriginalPlazaInfo))
        loadOriginalPlazaInfo()
    }
    
    @objc private func loadOriginalPlazaInfo() {
        queryService.fetchOriginalPlazaPublica { [weak self] (_, _) in
            self?.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PlazaViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plazaPublicaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "plazaCell") as! PlazaTableViewCell
        let plaza = plazaPublicaList[indexPath.row]
        
        //cell.imageFav.image = nil//will be use same for now
        cell.plazaName.text = plaza.name
        cell.plazaMunicipality.text = plaza.municipality
        cell.plazaLatitud.text = String(plaza.coordinateLat)
        cell.plazaLongitud.text = String(plaza.coordinateLong)
        
        return cell
    }
}

extension PlazaViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        //let plazaPublica = plazaPublicaList[indexPath.row]
        
//        queryService.fetchPokemonDetailsWith(plazaPublica.url) { [weak self] (success, error) in
//            if success {
//                self?.tableView.reloadData()
//            }
//        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let totalPlazaPublicaCount = plazaPublicaList.count
        let currentRow = indexPath.row
        
        if (totalPlazaPublicaCount - 1) == currentRow {
            print("We're at the bottom")
            loadOriginalPlazaInfo()
        }
    }
}
