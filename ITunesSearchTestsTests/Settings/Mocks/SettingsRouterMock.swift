//
//  SettingsRouterMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SettingsRouterImplementationMock: SettingsRouter {
    
    var isShowAlertCalled = false
    
    func showAlert(with errorMessage: String) {
        isShowAlertCalled = true
    }
}
