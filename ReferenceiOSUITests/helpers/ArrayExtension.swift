//
//  ArrayExtension.swift
//  ReferenceiOSUITests
//
//  Created by Yuliia Lysenko on 31/03/2024.
//  Copyright © 2024 ABN AMRO. All rights reserved.
//

import Foundation

extension Array where Element: Hashable {
   
    func areAllElementsUnique() -> Bool {
        let aSet = Set(self)
        return count == aSet.count
    }
    
}
