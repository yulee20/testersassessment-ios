//
//  ViewController.swift
//  ReferenceiOS
//
//  Created by Dunya Kirkali on 27/03/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel! {
        didSet {
            label.accessibilityIdentifier = "label"
        }
    }
    
    // Added accessibility ID for Button
    @IBOutlet weak var button: UIButton!{
        didSet {
            button.accessibilityIdentifier = "button"
        }
    }

    @IBAction func generate(_ sender: Any) {
        // Generate amount
        // There was a syntax error; changed Float to Int
        let amount = Int.random(in: 100 ..< 99999999)

        // Format
        if let formattedAmount = CurrencyHelper.format(amount: amount as NSNumber) {
            label.attributedText = CurrencyHelper.attributify(amount: formattedAmount)
        }
    }
}
