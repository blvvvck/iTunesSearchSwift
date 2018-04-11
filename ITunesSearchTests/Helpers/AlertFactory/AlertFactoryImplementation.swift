//
//  AlertFactoryImplementation.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

class AlertFactoryImplementation: AlertFactory {
    
    func getAlert(with message: String) -> UIAlertController {
        let alert = UIAlertController(title: "Ошибка!", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        return alert
    }
}
