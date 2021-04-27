//
//  uiviewExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
extension UIView {
@IBInspectable var cornerRadius: CGFloat {
    get {
        return layer.cornerRadius
    } set {
        layer.cornerRadius = newValue
    }
}
}
