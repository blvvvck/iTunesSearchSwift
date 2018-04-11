//
//  SettingsViewTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SettingsViewTests: XCTestCase {
    
    var view: SettingsViewController!
    
    override func setUp() {
        super.setUp()
        view = SettingsViewController()
    }
    
    override func tearDown() {
        view = nil
        super.tearDown()
    }
    
    func testThatAfterViewDidLoadViewIsReadyCalled() {
        //given
        let presenter = SettingsPresenterMock()
        view.presenter = presenter
        
        //when
        view.viewDidLoad()
        
        //that
        XCTAssert(presenter.viewIsReadyCalled)
    }
    
    func testThatAfterTapOnSaveButtonSaveSettingsCalled() {
        //given
        let presenter = SettingsPresenterMock()
        view.presenter = presenter
//        let button = UIButton()
//        button.addTarget(view, action: #selector(view.saveSettings(_:)), for: UIControlEvents.touchUpInside)
        
        //when
        presenter.saveSettings(with: 0, and: 0, and: "0")
        
        //that
        XCTAssert(presenter.saveSettingsCalled)
    }
    
}
