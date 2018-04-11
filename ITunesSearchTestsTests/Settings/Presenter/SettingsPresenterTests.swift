//
//  SettingsPresenterTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SettingsPresenterTests: XCTestCase {
    
    var presenter: SettingsPresenter!
    
    override func setUp() {
        super.setUp()
        presenter = SettingsPresenter()
    }
    
    override func tearDown() {
        presenter = nil
        super.tearDown()
    }
    
    
    func testThatSetMediaTypeCalledAfterFinishLoadSettings() {
        //given
        let view = SettingsViewMock()
        presenter.view = view
        let model = SettingsModel(value: ["mediatypeIndex": 0, "deviceTypeIndex": 0, "countOfObjects": "0" ])
        //when
        presenter.didFinishGettingSavedSettings(with: model)
        //then
        XCTAssert(view.isSetMediaType)
    }
    
    func testThatSetDeviceTypeCalledAfterFinishLoadSettings() {
        //given
        let view = SettingsViewMock()
        presenter.view = view
        let model = SettingsModel(value: ["mediatypeIndex": 0, "deviceTypeIndex": 0, "countOfObjects": "1" ])
        //when
        presenter.didFinishGettingSavedSettings(with: model)
        //then
        XCTAssert(view.isSetDeviceType)
    }
    
    func testThatSetCountOfObjectsCalledAfterFinishLoadSettings() {
        //given
        let view = SettingsViewMock()
        presenter.view = view
        let model = SettingsModel(value: ["mediatypeIndex": 0, "deviceTypeIndex": 0, "countOfObjects": "1" ])
        //when
        presenter.didFinishGettingSavedSettings(with: model)
        //then
        XCTAssert(view.isSetDeviceType)
    }
    
    func testThatIncorrectSettingsShowAlertCalled() {
        //given
        let router = SettingsRouterImplementationMock()
        presenter.router = router
        let interactor = SettingsInteractorMock()
        presenter.interactor = interactor
        
        //when
        presenter.saveSettings(with: 1, and: 1, and: "")
        //then
        XCTAssert(router.isShowAlertCalled)
    }
    
    func testWhenViewIsReadyPreparePickerViewCalled() {
        //given
        let view = SettingsViewMock()
        let interactor = SettingsInteractorMock()
        presenter.interactor = interactor
        presenter.view = view
        
        //when
        presenter.viewIsReady()
        //then
        XCTAssert(view.isPreparedPickerView)
    }
    
    func testWhenSaveSettingInteractorSaveSettingsCalled() {
        //given
        let interactor = SettingsInteractorMock()
        presenter.interactor = interactor

        //when
        presenter.saveSettings(with: 1, and: 1, and: "12")
        //then
        XCTAssert(interactor.isSaveSettingsCalled)
    }
    
    func testThatLoadSettingsCalled() {
        //given
        let interactor = SettingsInteractorMock()
        let view = SettingsViewMock()
        presenter.interactor = interactor
        presenter.view = view

        
        //when
        presenter.viewIsReady()
        //then
        XCTAssert(interactor.isLoadSettingsCalled)
    }
    
}
