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
    //new
    var plazaPublicaListStatic = [PlazaPublica] ()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Mi Fi"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Load Next Page", style: .plain, target: self, action: #selector(loadOriginalPlazaInfo))
        loadOriginalPlazaInfoStaticData()
    }
    
    @objc private func loadOriginalPlazaInfo() {
        queryService.fetchOriginalPlazaPublica { [weak self] (_, _) in
            self?.tableView.reloadData()
        }
    }
    
    @objc private func loadOriginalPlazaInfoStaticData() {
        plazaPublicaListStatic = PlazaPublica.defaultDataArrayStatic
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
    
    //ActionSheet
    private func presentActionSheetWith(_ viewModel: PlazaPublica) {
        let actionSheetController = UIAlertController(title: "Select Action", message: "Select action for view model", preferredStyle: .actionSheet)
        
        //TODO: --Will be use in the future to show only Map--//
        let modalAction = UIAlertAction(title: "Editar", style: .default) { [weak self] (_) in
            //self?.presentModal(viewModel)
        }
        let pushAction = UIAlertAction(title: "Detalle", style: .default) { [weak self] (_) in
            self?.pushView(viewModel)
        }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (_) in
            self.delete(viewModel)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        actionSheetController.addAction(modalAction)
        actionSheetController.addAction(pushAction)
        actionSheetController.addAction(deleteAction)
        actionSheetController.addAction(cancelAction)
        
        navigationController?.present(actionSheetController, animated: true, completion: nil)
        
        // every object referenced inside a completion block receives a strong reference by the function/object owning the completion block
        
        // navController >s viewController
        // navController >s alertController
    }
    
    //TODO: --Will be use in the future to show only Map--//
//            private func presentModal(_ viewModel: PlazaPublica) {
//                let modalVC = storyboard?.instantiateViewController(withIdentifier: "modal") as! ModalViewController
//
//                self.definesPresentationContext = true
//                modalVC.modalPresentationStyle = .overCurrentContext
//
//                modalVC.viewModel = viewModel
//                navigationController?.present(modalVC, animated: true, completion: nil)
//            }
    
    private func pushView(_ viewModel: PlazaPublica) {
        let pushedVC = storyboard?.instantiateViewController(withIdentifier: "detailPlaza") as! DetalViewController
        pushedVC.viewModel = viewModel
        navigationController?.pushViewController(pushedVC, animated: true)
    }
    
    private func delete(_ viewModel: PlazaPublica) {
        //TODO: viewModels = viewModels.filter({ $0.imageName != viewModel.imageName })
        tableView.reloadData()
    }

}

extension PlazaViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plazaPublicaListStatic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "plazaCell") as! PlazaTableViewCell
        let plaza = plazaPublicaListStatic[indexPath.row]
        
        //cell.imageFav.image = nil//will be use same for now
        cell.plazaName.text = plaza.properties_nombre
        cell.plazaMunicipality.text = plaza.properties__municipio
        cell.plazaLatitud.text = plaza.geometry__coordinates001!["coordinates"]?[0]
        cell.plazaLongitud.text = plaza.geometry__coordinates001!["coordinates"]?[1]
        
        return cell
    }
}

extension PlazaViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let plazaPublica = plazaPublicaListStatic[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        presentActionSheetWith(plazaPublica)
        
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
