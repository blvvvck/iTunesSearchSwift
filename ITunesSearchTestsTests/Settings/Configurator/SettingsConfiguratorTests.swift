//
//  SettingsConfiguratorTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SettingsConfiguratorTests: XCTestCase {
    
    var settingsInitializer: SettingsInitializer!
    
    override func setUp() {
        super.setUp()
        settingsInitializer = SettingsInitializer()
    }
    
    override func tearDown() {
        settingsInitializer = nil
        super.tearDown()
    }
    
    func testSetupModule() {
        //given
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        settingsInitializer.viewController = viewController
        
        //when
        settingsInitializer.awakeFromNib()
        
        //then
        
        XCTAssertNotNil(viewController.presenter)
        XCTAssert(viewController.presenter is SettingsPresenter)
        
        let presenter = viewController.presenter as! SettingsPresenter
        XCTAssertNotNil(presenter.view)
        XCTAssertNotNil(presenter.interactor)
        XCTAssertNotNil(presenter.router)
        XCTAssert(presenter.interactor is SettingsInteractor)
        XCTAssert(presenter.router is SettingsRouterImplementation)
        
        let interactor = presenter.interactor as! SettingsInteractor
        XCTAssertNotNil(interactor.presenter)
        XCTAssertNotNil(interactor.dbManager)
        
        let router = presenter.router as! SettingsRouterImplementation
        XCTAssertNotNil(router.view)
        XCTAssertNotNil(router.alertFactory)
    }
    
}
