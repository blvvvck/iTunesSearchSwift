//
//  SearchInteractorMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SearchInteractorMock: SearchInteractorInput {
    
    var getMediaResultsCalled = true
    
    func getMediaResults(with text: String) {
        getMediaResultsCalled = true
    }
}
