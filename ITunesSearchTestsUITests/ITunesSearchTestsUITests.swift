//
//  ITunesSearchTestsUITests.swift
//  ITunesSearchTestsUITests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import XCTest

class ITunesSearchTestsUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        
        let app = XCUIApplication()
        let emptyListTable = app.tables["Empty list"]
        emptyListTable.swipeUp()
        
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Settings"].tap()
        app/*@START_MENU_TOKEN@*/.pickerWheels["movie"]/*[[".pickers.pickerWheels[\"movie\"]",".pickerWheels[\"movie\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.tap()
        app/*@START_MENU_TOKEN@*/.buttons["iPad"]/*[[".segmentedControls.buttons[\"iPad\"]",".buttons[\"iPad\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let textField = app.textFields["1-200"]
        textField.tap()
        textField.typeText("10")
        app/*@START_MENU_TOKEN@*/.buttons["Done"]/*[[".keyboards.buttons[\"Done\"]",".buttons[\"Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        textField.typeText("\n")
        element.swipeUp()
        app.buttons["Save"].tap()
        tabBarsQuery.buttons["Search"].tap()
        emptyListTable.swipeUp()
        
        let searchSearchField = app.searchFields["Search"]
        searchSearchField.swipeDown()
        searchSearchField.typeText("одинокая звезда")
        
        let tablesQuery = app.tables
        tablesQuery.cells.containing(.staticText, identifier:"PHARAOH").staticTexts["Одинокая звезда"].swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["PHARAOH"]/*[[".cells.staticTexts[\"PHARAOH\"]",".staticTexts[\"PHARAOH\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["OK"].tap()
        app/*@START_MENU_TOKEN@*/.otherElements["URL"]/*[[".buttons[\"Address\"]",".otherElements[\"Address\"]",".otherElements[\"URL\"]",".buttons[\"URL\"]"],[[[-1,2],[-1,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.cells.containing(.staticText, identifier:"Одинокая звезда (Max Wave Remix)").children(matching: .other).element(boundBy: 0).swipeUp()
        
    }
    
}
