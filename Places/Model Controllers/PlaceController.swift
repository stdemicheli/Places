//
//  PlaceController.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

class PlaceController {
    
    func createPlace(withName name: String, latitude: Double, longitude: Double) {
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        places.append(place)
        print(places)
    }
    
    private(set) var places: [Place] = []
    
}
