//
//  HomeRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
class HomeRouter {
    
    class func CreateHomeViewController()-> UIViewController {
        let HomeView = HomeViewController.loadFromStoryboard(name: "HomeView")
        let view = HomeView as? HomeViewProtocol
        let router = HomeRouter()
        let presenter = HomePresenter(view: view,router: router)
        view?.presenter = presenter
        return HomeView
    }
}
