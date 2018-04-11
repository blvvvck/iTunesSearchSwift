//
//  SettingsViewInput.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol SettingsViewInput: class {
    
    func setMediaType(with typeIndex: Int)
    func setDeviceType(with typeIndex: Int)
    func setCountOfObjects(with count: String)
    func preparePickerView() 
}
