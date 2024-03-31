//
//  Formatter.swift
//  ReferenceiOSUITests
//
//  Created by Yuliia Lysenko on 31/03/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation

enum Formatter {
    static var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "nl_NL")
        
        return formatter
    }
}
