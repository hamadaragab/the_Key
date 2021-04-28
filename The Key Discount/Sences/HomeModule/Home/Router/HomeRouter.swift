//
//  HomeRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
class HomeRouter {
    
    class func CreateLoginViewController()-> UIViewController {
        let LoginView = LoginViewController.loadFromStoryboard(name: "LoginViewController")
        let view = LoginView as? LoginViewProtocol
        let router = LoginRouter()
        let presenter = loginPresenter(view: view,router: router)
        view?.presenter = presenter
        return LoginView
    }
}
