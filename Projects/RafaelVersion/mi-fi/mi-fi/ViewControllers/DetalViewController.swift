//
//  DetalViewController.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/26/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit
import MapKit

class DetalViewController: UIViewController {
    
    //UI Objects
    @IBOutlet weak var plazaDetailName: UILabel!
    @IBOutlet weak var plazaDetailMun: UILabel!
    @IBOutlet weak var plazaDetailLat: UILabel!
    @IBOutlet weak var plazaDetailLong: UILabel!
    @IBOutlet weak var plazaDetailMapView: MKMapView!
    
    var viewModel: PlazaPublica!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Mi Fi Plaza Detail"

        //charge with info come from TableView of PlazaViewController
        plazaDetailName.text = viewModel.properties_nombre
        plazaDetailMun.text = viewModel.properties__municipio
        plazaDetailLat.text = viewModel.geometry__coordinates001!["coordinates"]?[0]
        plazaDetailLong.text = viewModel.geometry__coordinates001!["coordinates"]?[1]
        
        let plazaName = (viewModel.properties_nombre != nil) ? viewModel.properties_nombre : "No Name Found"
        
        let latitudDbl = ( (Double((viewModel.geometry__coordinates001!["coordinates"]?[0])! ) != 0.000) ? Double((viewModel.geometry__coordinates001!["coordinates"]?[0])!) : 18.466333 )
        let longitudeDbl = ( (Double((viewModel.geometry__coordinates001!["coordinates"]?[1])! ) != 0.000) ? Double((viewModel.geometry__coordinates001!["coordinates"]?[1])!) : -66.105721 )
        
        //guard let latitudDbl = Double((viewModel.geometry__coordinates001!["coordinates"]?[0])!) else { 18.466333; return}
        //guard let longitudeDbl = Double((viewModel.geometry__coordinates001!["coordinates"]?[1])!) else { -66.105721; return}
        
        let latitudNum = CLLocationDegrees(latitudDbl!)
        let longitudeNum = CLLocationDegrees(longitudeDbl!)
        
        //Map
        // set initial location in Puerto Rico
        let initialLocation = CLLocation(latitude: latitudNum, longitude: longitudeNum)
        centerMapOnLocation(location: initialLocation)
        
        annotation(annLat: latitudNum, annLong: longitudeNum, annTitle: plazaName, annSubtitle: "Public Free Wifi")
        
        
    }
    
    func annotation(annLat: CLLocationDegrees, annLong: CLLocationDegrees, annTitle: String?, annSubtitle: String?){
        // Drop a pin at user's Current Location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(annLat, annLong);
        myAnnotation.title = annTitle ?? "Not Found Name"
        myAnnotation.subtitle = annSubtitle
        plazaDetailMapView.addAnnotation(myAnnotation)
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
    //set default Map Info
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        plazaDetailMapView.setRegion(coordinateRegion, animated: true)
    }

}
