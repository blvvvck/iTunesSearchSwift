//
//  SearchViewTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class SearchViewTests: XCTestCase {
    
    var view: SearchViewController!
    
    override func setUp() {
        super.setUp()
        view = SearchViewController()
    }
    
    override func tearDown() {
        view = nil
        super.tearDown()
    }
    
    func testThatViewIsReadyCalled() {
        //given
        let presenter = SearchPresenterMock()
        view.presenter = presenter
        //when
        view.viewDidLoad()
        //then
        XCTAssert(presenter.viewIsReadyCalled)
    }
    
    func testThatViewDidAppearCalled() {
        //given
        let presenter = SearchPresenterMock()
        view.presenter = presenter
        //when
        view.viewDidAppear(true)
        //then
        XCTAssert(presenter.viewDidAppearCalled)
    }
    
    func testThatDidUpdateSearchTextCalled() {
        //given
        let presenter = SearchPresenterMock()
        view.presenter = presenter
        //when
        view.updateSearchResults(for: view.searchController)
        //then
        XCTAssert(presenter.didUpdateSearchTextCalled)
    }
    
}
