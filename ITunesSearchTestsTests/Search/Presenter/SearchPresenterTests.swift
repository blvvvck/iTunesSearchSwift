//
//  SearchPresenterTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SearchPresenterTests: XCTestCase {
    
    var presenter: SearchPresenterImplementation!
    
    override func setUp() {
        super.setUp()
        presenter = SearchPresenterImplementation()
    }
    
    override func tearDown() {
        presenter = nil
        super.tearDown()
    }
    
    func testThatPrepareTableViewCalled() {
        //given
        let view = SearchViewMock()
        presenter.view = view
        
        //when
        presenter.viewIsReady()
        
        //then
        XCTAssert(view.prepareTableViewCalled)
    }
    
    func testThatPrepareSearchControllerCalled() {
        //given
        let view = SearchViewMock()
        presenter.view = view
        
        //when
        presenter.viewIsReady()
        
        //then
        XCTAssert(view.prepareSearchControllerCalled)
    }
    
    func testThatSetCellModelsCalled() {
        //given
        let view = SearchViewMock()
        presenter.view = view
        var models = [MediaCellModelImplementation]()
        let model1 = MediaCellModelImplementation(author: "123", description: "123", imageURL: "31", price: 21.0, viewURL: "123", name: "123")
        models.append(model1)
        
        //when
        presenter.didFinishGettingMediaResults(with: models)
        
        //that
        XCTAssert(view.setModelsCalled)
    }
    
    func testThatReloadTableViewCalled() {
        //given
        let view = SearchViewMock()
        presenter.view = view
        var models = [MediaCellModelImplementation]()
        let model1 = MediaCellModelImplementation(author: "123", description: "123", imageURL: "31", price: 21.0, viewURL: "123", name: "123")
        models.append(model1)
        
        //when
        presenter.didFinishGettingMediaResults(with: models)
        
        //that
        XCTAssert(view.reloadTalbeViewCalled)
    }
    
    func testThatGetMediaResultIsCalled() {
        //given
        let interactor = SearchInteractorMock()
        presenter.interactor = interactor
        
        //when
        presenter.didUpdateSearchText(with: "123")
        
        //then
        XCTAssert(interactor.getMediaResultsCalled)
    }
}
