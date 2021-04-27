//
//  SplashScreenRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation

import UIKit
class splashScreenRouter {
    class func CreateSplashScreenViewController()-> UIViewController {
        let FirstView = SplashScreenViewController.loadFromStoryboard(name: "SplashScreen")
        let view = FirstView as? splashViewProtocol
        let router = splashScreenRouter()
        let presenter = splashPresenter(view: view, router: router)
        view?.presenter = presenter
        return FirstView
    }
}
