//
//  HotelsRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import UIKit
class HotelsRouter {
    
    class func CreateHotelsViewController()-> UIViewController {
        let HotelsView = HotelsViewController.loadFromStoryboard(name: "HotelsView")
        let view = HotelsView as? HotelsViewProtocol
        let router = HotelsRouter()
        let presenter = HotelsPresenter(view: view,router: router)
        view?.presenter = presenter
        return HotelsView
    }
}
