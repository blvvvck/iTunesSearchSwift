//
//  SettingsRouter.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

protocol SettingsRouter {
    
    /// Отобразить алерт
    ///
    /// - Parameter alert: сообщение для отображения в алерте
    func showAlert(with errorMessage: String)
    
}
