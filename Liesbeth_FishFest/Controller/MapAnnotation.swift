//
//  MapAnnotation.swift
//  Liesbeth_FishFest
//
//  Created by mobapp11 on 31/01/2019.
//  Copyright © 2019 mobapp11. All rights reserved.
//

import Foundation
import MapKit

class MapAnnotation: NSObject, MKAnnotation  {
    
    //verplicht var coordinate te declareren bij gebruik van annotaties
    var coordinate: CLLocationCoordinate2D
    //optioneel, voor popup bij pin
    var title: String?
    var subtitle: String?
    
    
    init(coordinate:CLLocationCoordinate2D, title:String, subtitle:String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
