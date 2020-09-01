//
//  DroppablePin.swift
//  Weather App
//
//  Created by MOHIT SHARMA on 01/09/20.
//  Copyright © 2020 Ankit Sharma. All rights reserved.
//


import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
    
}


