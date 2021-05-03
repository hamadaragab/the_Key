//
//  ForgetPasswordScreenRouter.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/3/21.
//

import Foundation

import UIKit
class ForgetPasswordRouter {
    class func CreateForgetPasswordScreenViewController()-> UIViewController {
        let ForgetPasswordView = ForgetPasswordViewController.loadFromStoryboard(name: "ForgetPasswordViewController")
        let view = ForgetPasswordView as? ForgetPasswordViewProtocol
        let router = ForgetPasswordRouter()
        let presenter = forgetPasswordPresenter(view: view,router: router)
        view?.presenter = presenter
        return ForgetPasswordView
 
    }
}
