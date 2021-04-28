//
//  tabBarRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
class tabBarRouter {
    class func CreateLoginViewController()-> UIViewController {
        let LoginView = HomeTabBarViewController.loadFromStoryboard(name: "HomeTabBar")
        let view = LoginView as? tabBarViewProtocol
        let router = tabBarRouter()
        let presenter = tabBarPresenter(view: view,router: router)
        view?.presenter = presenter
        return LoginView
    }
}
