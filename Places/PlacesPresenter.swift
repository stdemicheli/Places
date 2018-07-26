//
//  PlacesPresenter.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

protocol PlacesPresenter: class {
    // In protocols we need to define if we can get/set the property
    var placeController: PlaceController? { get set }
}
