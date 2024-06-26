//
//  CurrencyHelperTests.swift
//  ReferenceiOSTests
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import XCTest
@testable import ReferenceiOS

class CurrencyHelperTests: XCTestCase {
    func testFormatRounding() {
        let number: NSNumber = 129.999
        let result = CurrencyHelper.format(amount: number)
        
        XCTAssertEqual(result, "€ 130,00")
    }
    
    func testFormatRegular() {
        let number: NSNumber = 122
        let result = CurrencyHelper.format(amount: number)
        
        XCTAssertEqual(result, "€ 122,00")
    }
    
    func testFormatDecimals() {
        let number: NSNumber = 122.50
        let result = CurrencyHelper.format(amount: number)
        
        XCTAssertEqual(result, "€ 122,50")
    }
    
    // Unit Test to check 'attributify()' function
    // It can be verified using snapshot testing
    
    func testAttributifyStringDoesNotModifyContent() {
        let number = "€ 52.033.135,00"
        
        let expectedResult = NSMutableAttributedString(string: number, attributes: [.font: UIFont(name: "Helvetica", size: 18)!])
        expectedResult.setAttributes([.font:UIFont(name: "Helvetica", size: 13)!,.baselineOffset: 3], range: NSRange(location: (number.count - 2), length: 2))
        
        let actualResult = CurrencyHelper.attributify(amount: number)
        
        XCTAssertEqual(actualResult.string, expectedResult.string)
    }
    
}

