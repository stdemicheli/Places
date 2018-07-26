//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // childViewControllers is a list of all child view controllers
        for childVC in childViewControllers {
            if let vc = childVC as? PlacesPresenter {
                vc.placeController = placeController
            }
        }
    }

    let placeController = PlaceController()
}
