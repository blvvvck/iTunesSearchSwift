//
//  SearchConfiguratorTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SearchConfiguratorTests: XCTestCase {
    
    var searchInitializer: SearchInitializer!
    
    override func setUp() {
        super.setUp()
        searchInitializer = SearchInitializer()
    }
    
    override func tearDown() {
        searchInitializer = nil
        super.tearDown()
    }
    
    func testSetupModule() {
        //given
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SearchViewContoller") as! SearchViewController
        searchInitializer.viewController = viewController
        
        //when
        searchInitializer.awakeFromNib()
        
        //then
        
        XCTAssertNotNil(viewController.presenter)
        XCTAssert(viewController.presenter is SearchPresenterImplementation)
        
        let presenter = viewController.presenter as! SearchPresenterImplementation
        XCTAssertNotNil(presenter.view)
        XCTAssertNotNil(presenter.interactor)
        XCTAssertNotNil(presenter.router)
        XCTAssert(presenter.interactor is SearchInteractor)
        XCTAssert(presenter.router is SearchRouter)
        
        let interactor = presenter.interactor as! SearchInteractor
        XCTAssertNotNil(interactor.presenter)
        XCTAssertNotNil(interactor.dbManager)
        XCTAssertNotNil(interactor.networkManager)

        
        let router = presenter.router as! SearchRouter
        XCTAssertNotNil(router.view)

    }
    
}

