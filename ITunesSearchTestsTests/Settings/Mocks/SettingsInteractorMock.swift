//
//  SettingsInteractorMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SettingsInteractorMock: SettingsInteractorInput {
    
    var isLoadSettingsCalled = false
    var isSaveSettingsCalled = false
    
    func loadSettings() {
        isLoadSettingsCalled = true
    }
    
    func saveSettings(with mediaTypeIndex: Int, and deviceTypeIndex: Int, and countOfObjects: String) {
        isSaveSettingsCalled = true
    }
}
