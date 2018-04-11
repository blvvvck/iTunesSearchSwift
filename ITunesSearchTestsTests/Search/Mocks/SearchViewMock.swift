//
//  SearchViewMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SearchViewMock: SearchViewInput {
    
    var prepareTableViewCalled = false
    var prepareSearchControllerCalled = false
    var setModelsCalled = false
    var reloadTalbeViewCalled = false
    
    func prepareTableView() {
        prepareTableViewCalled = true
    }
    
    func prepareSearchController() {
        prepareSearchControllerCalled = true
    }
    
    func set(cellModels: [MediaCellModel]) {
        setModelsCalled = true
    }
    
    func reloadTableView() {
        reloadTalbeViewCalled = true
    }
}
