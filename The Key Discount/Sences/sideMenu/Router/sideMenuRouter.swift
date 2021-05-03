//
//  sideMenuRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import UIKit
class sideMenutRouter {
    
    class func CreatesideMenuViewController(isOpen:Bool)-> UIViewController {
        let sideMenuView = sideMenuViewController.loadFromStoryboard(name: "sideMenuView")
        let view = sideMenuView as? sideMenuViewProtocol
        let router = sideMenutRouter()
        let presenter = sideMenuPresenter(view: view,router: router, isOpen: isOpen)
        view?.presenter = presenter
        return sideMenuView
    }
}
