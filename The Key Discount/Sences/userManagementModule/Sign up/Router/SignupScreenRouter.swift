//
//  SigninScreenRouter.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/2/21.
//

import Foundation

import UIKit
class SignUpRouter {
    class func CreateSignupScreenViewController()-> UIViewController {
        let SignupView = SignupViewController.loadFromStoryboard(name: "SignupViewController")
        let view = SignupView as? SignupViewProtocol
        let router = SignUpRouter()
        let presenter = signupPresenter(view: view,router: router)
        view?.presenter = presenter
        return SignupView
 
    }
}
