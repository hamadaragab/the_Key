//
//  ButtonExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import UIKit
@IBDesignable
extension UIButton {
    @IBInspectable var localizationKey: String {
        set {
            setTitle(newValue.localized, for: .normal)
        }
        get {
            return (titleLabel?.text)!
        }
    }
}
