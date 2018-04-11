//
//  NetworkManagerTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests

class NetworkManagerTests: XCTestCase {
    
    var networkManager: NetworkManager!
    
    override func setUp() {
        super.setUp()
        networkManager = NetworkManagerImplementation()
    }
    
    override func tearDown() {
        networkManager = nil
        super.tearDown()
    }
    
    
    func testRequestReturnData() {
        //given
        let expect = expectation(description: "Requet test")
        //when
        networkManager.getMedia(query: "одинокая звезда", limit: "10", mediaType: "music", deviceType: "") { (results) in
            
            if results == nil {
                XCTFail("error")
            }
            
            expect.fulfill()
        }
        //then
        waitForExpectations(timeout: 5.0) { (error) in
            if error != nil {
                XCTFail("expect not full fill")
            }
        }
    }
    
}
