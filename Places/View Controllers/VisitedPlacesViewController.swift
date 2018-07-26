//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate {

    
    func placeWasSelected(place: Place) {
        // provide location to mapViewController so it can zoom in
        mapViewController.location = place.location
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if the embed goes through then it will assign PlacesTableViewController to placesTableViewController
        // pass placeControllers to table and map views
        if let tableVC = segue.destination as? PlacesTableViewController {
            placesTableViewController = tableVC
            placesTableViewController.placeController = placeController
            placesTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController {
            mapViewController = mapVC
        }
    }
    
    // MARK: - Properties
    
    var placeController: PlaceController?
    
    var mapViewController: MapViewController!
    var placesTableViewController: PlacesTableViewController!

}
