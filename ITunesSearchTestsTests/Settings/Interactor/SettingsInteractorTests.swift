//
//  SettingsInteractorTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SettingsInteractorTests: XCTestCase {
    
    var interactor: SettingsInteractor!
    
    override func setUp() {
        super.setUp()
        interactor = SettingsInteractor()
    }
    
    override func tearDown() {
        interactor = nil
        super.tearDown()
    }
    
    func testDidFinishLoadingSettingsCalled() {
        //given
        let presenter = SettingsPresenterMock()
        interactor.presenter = presenter
        let dbManager = DbManagerImplementation()
        interactor.dbManager = dbManager
        
        //when
        interactor.loadSettings()
        
        //then
        XCTAssert(presenter.didFinishGettingSaveSettingsCalled)
    }
    
}
