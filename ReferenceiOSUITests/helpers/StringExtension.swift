//
//  StringExtension.swift
//  ReferenceiOSUITests
//
//  Created by Yuliia Lysenko on 31/03/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation

extension String {
    
    func toCurrency() -> NSNumber? {
        let formatter = Formatter.currencyFormatter
        return formatter.number(from: self)
    }
    
    var isCurrency: Bool {
        guard !isEmpty else { return false }
        
        do {
            let regex = try Regex("^€( )?([0-9]{1,3})(\\.[0-9]{3})*(,[0-9]{0,2})?$")
            let result = try regex.firstMatch(in: self)
            return result != nil
        } catch {
            return false
        }
    }
    
}
