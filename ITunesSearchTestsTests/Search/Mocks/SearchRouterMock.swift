//
//  SearchRouterMock.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
@testable import ITunesSearchTests

class SearchRouterMock: SearchRouterInput {
    
    var showPageInSafariCalled = false
    
    func showPageInSafari(with url: URL) {
        showPageInSafariCalled = true
    }
}
