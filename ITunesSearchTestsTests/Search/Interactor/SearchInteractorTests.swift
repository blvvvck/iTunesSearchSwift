//
//  SearchInteractorTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SearchInteractorTests: XCTestCase {
    
    var interactor: SearchInteractor!
    
    override func setUp() {
        super.setUp()
        interactor = SearchInteractor()
    }
    
    override func tearDown() {
        interactor = nil

        super.tearDown()
    }
    
    func testThatDidFinishGettingMediaResultsCalled() {
        //given
        let presenter = SearchPresenterMock()
        interactor.presenter = presenter
        let dbManager = DbManagerImplementation()
        interactor.dbManager = dbManager
        let networkManager = NetworkManagerImplementation()
        interactor.networkManager = networkManager
        //when
        self.measure {
            startMeasuring()
            interactor.getMediaResults(with: "123")
            stopMeasuring()
        }
        
        //that
        XCTAssert(presenter.didFinishGettingMediaResultsCalled)
    }
    
}
