//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {

    @IBAction func createNewPlace(_ sender: Any) {
        guard let name = nameTextField.text,
        let latitudeString = latitutdeTextField.text,
        let longitudeString = longitudeTextField.text,
        // guard against latitude/longitude not being
        let latitude = Double(latitudeString),
        let longitude = Double(longitudeString) else {
                return
        }
        
        placeController?.createPlace(withName: name, latitude: latitude, longitude: longitude)
    }
    
    // we want the app to crash if there is no PlaceController
    var placeController: PlaceController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitutdeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
}
