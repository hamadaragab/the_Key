//
//  Constant.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import MOLH
class Constant {
   static let shared = Constant()
    let IMAGE_PLACEHOLDER = "camera_icon"
    let url = ""
    func isArabic() ->  Bool{
        return MOLHLanguage.isArabic()
    }
    func isRTLLanguage() ->  Bool{
        return MOLHLanguage.isRTLLanguage()
    }
}
