//
//  SettingsRouterImplementation.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

class SettingsRouterImplementation: SettingsRouter {
    
    weak var view: SettingsViewController!
    var alertFactory: AlertFactory!
    
    func showAlert(with errorMessage: String) {
        let alert = alertFactory.getAlert(with: errorMessage)
        view.present(alert, animated: true, completion: nil)
    }
}
