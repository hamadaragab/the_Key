//
//  UiImageExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import Kingfisher
extension UIImageView {
    func loadImageFrom(imgUrl: String,placeholder:String = Constant.shared.IMAGE_PLACEHOLDER) {
        let url = ""
        let strUrl = "\(url)/\(imgUrl)".replacingOccurrences(of: "\\", with: "/")
        
        print("imagess",strUrl)
        if let url = URL(string: strUrl){
           self.kf.setImage(with: url, placeholder: UIImage(named: ""), options: [.transition(.fade(0.2))])
        }else{
            print("image url: nil \(strUrl)")
        }
       }

       func setImageWithIndicator(imgUrl: String,placeholder:String = Constant.shared.IMAGE_PLACEHOLDER) {
        if let url = URL(string: imgUrl){
           self.kf.indicatorType = .activity
           self.kf.setImage(with: url)
            print("urlimage",url)
        }else{
            print("image url: nil \(imgUrl)")
        }
       }
}
