//
//  FavTableViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/29/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit
import CoreData

class FavTableViewController: UITableViewController {
    
    let appDelegateFav = UIApplication.shared.delegate as! AppDelegate
    
    var listFavPlazas: [PlazaPublica] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CoreData
        let context = appDelegateFav.persistentContainer.viewContext
        
        //TODO: change to load data from Entity
        //listFavPlazas = PlazaPublica.defaultDataArrayStatic
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PlazaPublicaCore")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "nameCore") as! String)
                
                var plaza: PlazaPublica = PlazaPublica.defaultData
                plaza.properties_nombre = data.value(forKey: "nameCore") as? String
                plaza.properties__municipio = data.value(forKey: "municipalityCore") as? String
                plaza.geometry__coordinates001!["coordinates"]?[0] = (data.value(forKey: "latitudCore") as? String)!
                plaza.geometry__coordinates001!["coordinates"]?[1] = (data.value(forKey: "longitudCore") as? String)!
                
                listFavPlazas.append(plaza)
            }
            
        } catch {
            
            print("Failed")
        }
        self.tableView.reloadData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listFavPlazas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFav") as! FavTableViewCell
        let plaza = listFavPlazas[indexPath.row]
        
        //cell.imageFav.image = nil//will be use same for now
        cell.NameFav.text = plaza.properties_nombre
        cell.MunicipalityFav.text = plaza.properties__municipio
        cell.LatitudFav.text = plaza.geometry__coordinates001!["coordinates"]?[0]
        cell.LongitudFav.text = plaza.geometry__coordinates001!["coordinates"]?[1]
        return cell// ?? UITableViewCell()
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
