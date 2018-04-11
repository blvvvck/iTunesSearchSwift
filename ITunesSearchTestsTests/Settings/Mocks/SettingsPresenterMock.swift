//
//  SettingsPresenterMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SettingsPresenterMock: SettingsViewOutput, SettingsInteractorOutput {
    
    var viewIsReadyCalled = false
    var saveSettingsCalled = false
    var didFinishGettingSaveSettingsCalled = false
    
    func viewIsReady() {
        viewIsReadyCalled = true
    }
    
    func saveSettings(with mediaTypeIndex: Int, and deviceTypeIndex: Int, and countOfObjects: String) {
        saveSettingsCalled = true
    }
    
    func didFinishGettingSavedSettings(with model: SettingsModel) {
        didFinishGettingSaveSettingsCalled = true
    }
}
