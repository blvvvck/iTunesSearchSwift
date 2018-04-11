//
//  SettingsInteractorOutput.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol SettingsInteractorOutput: class {
    
    func didFinishGettingSavedSettings(with model: SettingsModel)
}
