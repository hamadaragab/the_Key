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
@IBDesignable
class TextFieldWithShadow : UITextField {
    @IBInspectable
    var shadowOpacity : CGFloat = 0.0 {
            didSet {
                  self.layer.shadowOpacity = Float(shadowOpacity)
              }
          }
    
    
    override func awakeFromNib() { // to make the design appears at run time
        super.awakeFromNib()
        self.setUpView()
    }
    override func prepareForInterfaceBuilder() { // to make the design appears on the storyboard
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
func setUpView(){
       let sceenWidth = UIScreen.main.bounds.width
       if sceenWidth >= 568 {
           self.layer.cornerRadius = cornerRadius * 2.5
       }else {
           self.layer.cornerRadius = cornerRadius
       }
    self.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    self.layer.shadowOffset = CGSize(width: 0, height: 4)
    self.layer.shadowRadius = 1.5
   }
}
