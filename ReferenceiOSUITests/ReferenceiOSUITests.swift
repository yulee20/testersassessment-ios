//
//  ReferenceiOSUITests.swift
//  ReferenceiOSUITests
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import XCTest

final class ReferenceiOSUITests: XCTestCase {
    
    private var homeScreenLocator: HomeScreenLocator!
    
    // To launch the app before each test
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        homeScreenLocator = HomeScreenLocator()
        homeScreenLocator.app.launch()
    }
    
    // To terminate the app after each test
    override func tearDown() {
        homeScreenLocator.app.terminate()
        homeScreenLocator = nil
        
        super.tearDown()
    }
    
    
    // Test to check the elements on the screen
    func testViewControllerInitialization() {
        let labelElement = homeScreenLocator.label
        
        XCTAssertTrue(labelElement.exists)
        XCTAssertEqual("Hello", labelElement.label)
        
        let button = homeScreenLocator.button
        
        XCTAssertTrue(button.exists)
    }
    
    // Test to check that value is different than "Hello" when button is clicked
    func testGenerateValue() {
        let labelElement = homeScreenLocator.label
        
        homeScreenLocator.clickButton()
        
        XCTAssertFalse(labelElement.label.contains("Hello"))
    }
    
    // Test to check that value is a valid currency
    func testIsValidCurrency() {
        homeScreenLocator.clickButton()
        
        let label = homeScreenLocator.label.label
        
        XCTAssertTrue(label.isCurrency)
    }
    
    // Test to check that generated value is positive
    func testIsPositiveValue() throws {
        homeScreenLocator.clickButton()
        
        let label = homeScreenLocator.label.label
        let optionalCurrencyNumber = label.toCurrency()
        let currencyNumber = try XCTUnwrap(optionalCurrencyNumber)
        
        XCTAssertTrue(currencyNumber.doubleValue > 0)
    }
    
    // Test to check that currency is EURO and its position is at the beginning
    func testIsCurrencyFormatEuro() {
        homeScreenLocator.clickButton()
        
        let labelElement = homeScreenLocator.label
        
        XCTAssertTrue(labelElement.label.hasPrefix("€"))
    }
    
    // Test to check that generated 10 values are unique
    func testGenerateUniqueValues() {
        var anArray = [String]()
        
        for _ in 1...10 {
            homeScreenLocator.clickButton()
            
            let number = homeScreenLocator.label.label
            anArray.append(number)
        }
        
        XCTAssertTrue(anArray.areAllElementsUnique())
    }
    
}
