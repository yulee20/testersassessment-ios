//
//  AccessibilityAuditsUITests.swift
//  ReferenceiOSUITests
//
//  Created by Yuliia Lysenko on 31/03/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation
import XCTest

// Test accessability

final class AccessibilityAuditsUITests: XCTestCase {
    func testAccessibilityAudits() throws {
        let app = XCUIApplication()
        app.launch()

        if #available(iOS 17.0, *) {
            try app.performAccessibilityAudit()
        } else {
            // Fallback on earlier versions
        }
    }
}
