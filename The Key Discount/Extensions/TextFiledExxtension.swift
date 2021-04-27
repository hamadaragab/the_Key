//
//  TextFiledExxtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import UIKit
import Foundation
extension UITextField {

    @IBInspectable var localizationKey: String {
        set {
            placeholder = newValue.localized
        }
        get {
            return placeholder!
        }
    }

    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

