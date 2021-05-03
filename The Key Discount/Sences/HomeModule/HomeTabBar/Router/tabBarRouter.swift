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
    
    func gotoSideMenu(from view: tabBarViewProtocol?, isOpen: Bool)
    {
        let sideMenuView = sideMenutRouter.CreatesideMenuViewController(isOpen: isOpen)
        if let HomeView = view as? UIViewController
        {
            HomeView.addChild(sideMenuView)
            HomeView.view.addSubview(sideMenuView.view)
        }
    }
}
