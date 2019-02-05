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
        
        //aanmaak locatie manager
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        //kaart updaten
        festMap.showsUserLocation = true
        
        let location = CLLocationCoordinate2D.init(latitude: 51.152480, longitude: 2.722531)
        let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        festMap.setRegion(region, animated: true)
        
        //starten in standard
        festMap.mapType = .standard
        
        //aanmaak locatie manager en gebruiker om toestemming te geven
        locationManager.requestWhenInUseAuthorization()
        
        //Annotaties aanmaken
        let pinDuneEat = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152439, 2.726066), title: "Frieten", subtitle: "")
        let pinDuneEat2 = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.153764, 2.724315), title: "Pizza", subtitle: "")
        let pinDuneWC = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152093, 2.727930), title: "WC", subtitle: "")
       
        let pinBeachEat = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.151053, 2.719420), title: "Pizza", subtitle: "")
        let pinBeachEat2 = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.151665, 2.720729), title: "Frieten", subtitle: "")
        let pinBeachWC = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake( 51.150162, 2.717122), title: "WC", subtitle: "")
       
        let pinDuneStage = MapAnnotation.init(coordinate: CLLocationCoordinate2D.init(latitude: 51.154521 , longitude: 2.725702), title: "Sea Stage", subtitle: "Line-Up")
        let pinBeachStage = MapAnnotation.init(coordinate: CLLocationCoordinate2DMake(51.152459, 2.722531), title: "Beach Stage", subtitle: "Line-Up")
        
        
        //lijst invullen
        pins += [pinBeachStage, pinBeachEat, pinBeachEat2, pinBeachWC, pinDuneStage, pinDuneEat, pinDuneEat2, pinDuneWC]
        
        //alles op de kaart zetten
        festMap.addAnnotations(pins)
    }
    
    //opvangen welke toestemming de gebruiker gegeven heeft
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if (status == .authorizedWhenInUse) {
            //starten met updaten locatie
            locationManager.startUpdatingLocation()
            //kaart updaten
            festMap.showsUserLocation = true
        }
        if (status == .denied){
            //pop up alert
        }
        if (status == .notDetermined) {
            locationManager.requestWhenInUseAuthorization()
        }
        
    }
    
    //hoe moeten de pins getekend worden?
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        //binnenkomende annotatie omzetten in eigen annotatie
        //opmaak voorzien indien dit lukt
        if let newAnnotation = annotation as? MapAnnotation {
            //kijken of er al een pin is getekend
            if let customView = festMap.dequeueReusableAnnotationView(withIdentifier: "Pin"){
                //pin bestaat al -> opvullen met waarden
                customView.annotation = newAnnotation
                return customView
            } else {
                //pin bestond nog niet, opbouwen in code
                /*
                let customView = MKPinAnnotationView.init(annotation: newAnnotation, reuseIdentifier: "Pin")
                customView.pinTintColor = UIColor.blue
                customView.canShowCallout = true
                customView.image = UIImage(named: "freddy.png")
                */
                
                let newView = MKAnnotationView.init(annotation: newAnnotation, reuseIdentifier: "Pin")
                if (newAnnotation.title == "WC") {
                    newView.image = UIImage (named: "restroom.png")
                    newView.canShowCallout = true
                } else if (newAnnotation.title == "Beach Stage") {
                    newView.image = UIImage (named: "stage2.png")
                    newView.canShowCallout = true
                } else if (newAnnotation.title == "Sea Stage") {
                    newView.image = UIImage (named: "stage2.png")
                    newView.canShowCallout = true
                } else if (newAnnotation.title == "Frieten") {
                    newView.image = UIImage (named: "fries.png")
                    newView.canShowCallout = true
                }else if (newAnnotation.title == "Pizza") {
                    newView.image = UIImage (named: "pizza.png")
                    newView.canShowCallout = true
                }
                                
                return newView
            }
            
        }
        return nil
    }
    
}
