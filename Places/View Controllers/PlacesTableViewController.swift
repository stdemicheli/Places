//
//  PlacesTableViewController.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

// Used to communicate that a row was selected in the table view
protocol PlacesTableViewControllerDelegate: class {
    func placeWasSelected(place: Place)
}

class PlacesTableViewController: UITableViewController, PlacesPresenter {
    
    // Gets called right before the view will appear on the screen --> reload before it shows the view
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let place = placeController?.places[indexPath.row] else { return }
        
        // instead of:
        // guard let place = placeController else { return }
        // let place = place.places[indexPath.row]

        delegate?.placeWasSelected(place: place)
    }

    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // if count is nil, return 0 --> nil coalescing
        return placeController?.places.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        let place = placeController?.places[indexPath.row]
        cell.textLabel?.text = place?.name

        return cell
    }
    
    // MARK: - Properties
    
    var placeController: PlaceController?
    
    weak var delegate: PlacesTableViewControllerDelegate?
    
}
