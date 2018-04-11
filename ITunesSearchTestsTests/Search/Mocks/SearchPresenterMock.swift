//
//  SearchPresenterMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SearchPresenterMock: SearchViewOutput, SearchInteractorOutput {
    
    var viewIsReadyCalled = false
    var didUpdateSearchTextCalled = false
    var viewDidAppearCalled = false
    var didFinishGettingMediaResultsCalled = false
    
    func viewIsReady() {
        viewIsReadyCalled = true
    }
    
    func didUpdateSearchText(with text: String) {
        didUpdateSearchTextCalled = true
    }
    
    func viewDidAppear() {
        viewDidAppearCalled = true
    }
    
    func didFinishGettingMediaResults(with result: [MediaCellModel]) {
        didFinishGettingMediaResultsCalled = true
    }
}
