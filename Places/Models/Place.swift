//
//  Place.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

struct Place {
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = (latitude, longitude)
    }
    
    var name: String
    var location: (latitude: Double, longitude: Double)
    
}
