//
//  SettingsViewMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SettingsViewMock: SettingsViewInput {
    
    var isSetMediaType = false
    var isSetDeviceType = false
    var isSetCountOfObjects = false
    var isPreparedPickerView = false
    
    func setMediaType(with typeIndex: Int) {
        isSetMediaType = true
    }
    
    func setDeviceType(with typeIndex: Int) {
        isSetDeviceType = true
    }
    
    func setCountOfObjects(with count: String) {
        isSetCountOfObjects = true
    }
    
    func preparePickerView() {
        isPreparedPickerView = true
    }
}
