//
//  DbManagerTests.swift
//  ITunesSearchTestsTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest
@testable import ITunesSearchTests
import Realm

class DbManagerTests: XCTestCase {
    
    var dbManager: DbManager!
    
    override func setUp() {
        super.setUp()
        dbManager = DbManagerImplementation()
    }
    
    override func tearDown() {
        dbManager = nil
        super.tearDown()
    }
    
    func testThatDataNotNil() {
        //given
        var model: SettingsModel?
        
        //when
        model = dbManager.getDataFromDB()
        if model == nil {
            XCTFail()
        }
    }
    
    func testThatDefaultDataNotNil() {
        //given
        var model: SettingsModel?
        
        //when
        model = dbManager.getDefaultData()
        
        //that
        if model == nil {
            XCTFail()
        }
    }
    
//    func testCorrectDataAdded() {
//        //given
//        let model = SettingsModel(value: ["mediatypeIndex": 0, "deviceTypeIndex": 0, "countOfObjects": "1" ])
//        
//        //when
//        let countBefore = dbManager.getAllDataFromDB().count
//        dbManager.addData(object: model)
//        let countAfter = dbManager.getAllDataFromDB().count
//        
//        //then
//        if countAfter - 1 != countBefore {
//            XCTFail()
//        }
//        
//    }
    
}
