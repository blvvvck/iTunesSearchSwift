//
//  AlertFactory.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

protocol AlertFactory {
    
    /// Получение алерта с сообщением ошибки
    ///
    /// - Parameter message: сообщение ошибки
    /// - Returns: готовый алерт
    func getAlert(with message: String) -> UIAlertController
    
}
