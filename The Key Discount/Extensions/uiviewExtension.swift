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

@IBDesignable
class ViewWithShadow : UIView {
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
    self.layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
       self.layer.shadowOffset = .zero
       self.layer.shadowRadius = 5
   }
}
