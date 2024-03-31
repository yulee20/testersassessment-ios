//
//  File.swift
//  ReferenceiOSUITests
//
//  Created by Yuliia Lysenko on 27/03/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

class HomeScreenLocator {
        
    // Screen Locators
    
    let app = XCUIApplication()
    let label: XCUIElement
    let button: XCUIElement
   
    init() {
        label = app.staticTexts["label"]
        button = app.buttons["button"]
    }
   
    // Screen Methods
    
    func clickButton() {
        button.tap()
    }
    
}
