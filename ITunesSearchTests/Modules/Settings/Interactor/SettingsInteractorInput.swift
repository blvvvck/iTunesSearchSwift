//
//  SettingsInteractorInput.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol SettingsInteractorInput: class {
    
    func loadSettings()
    func saveSettings(with mediaTypeIndex: Int, and deviceTypeIndex: Int, and countOfObjects: String)
}
