//
//  LabelExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
extension UILabel {
    @IBInspectable var localizationKey: String {
        set {
            text = newValue.localized
        }
        get {
            return text!
        }
    }
}
