//
//  MapViewController.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    
    @IBOutlet weak var festMap: MKMapView!
    var pins:[MapAnnotation] = [MapAnnotation]()
    var locationManager:CLLocationManager = CLLocationManager.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //aanmaak locatie manager en gebruiker om toestemming te geven
        locationManager.delegate = self
        
        //starten in standard
        festMap.mapType = .standard
        
        //Annotaties aanmaken
        let pinBeachStage = MapAnnotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.153019 , longitude: 2.725702), title: "Beach Stage", subtitle: "Line-Up")
        let pinDuneStage = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152459, 2.722531), title: "Dune Stage", subtitle: "Line-Up")
        let pinDuneEat = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152439, 2.726066), title: "Frietkraam", subtitle: "")
        
        //lijst invullen
        pins += [pinBeachStage, pinDuneStage, pinDuneEat]
        
        //alles op de kaart zetten
        festMap.addAnnotations(pins)
    }
}
