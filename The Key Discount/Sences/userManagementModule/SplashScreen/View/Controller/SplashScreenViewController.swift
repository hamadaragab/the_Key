//
//  SplashScreenViewController.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSplashScreen()

    }
    
    private func loadSplashScreen()
    {
        DispatchQueue.main.asyncAfter(deadline: .now()) {
//            if let token =  UserDefaults.standard.string(forKey: "USER_TOKEN_KEY"), !token.isEmpty{
//                UIApplication.shared.windows.first?.rootViewController = UINavigationController(rootViewController:HomeRouter.CreateHomeViewController())
//            }
<<<<<<< HEAD
//            else{ LoginRouter
//            UIApplication.shared.windows.first? .rootViewController = tabBarRouter.CreateLoginViewController()
            UIApplication.shared.windows.first? .rootViewController = //SignUpRouter.CreateSignupScreenViewController()
                //ForgetPasswordRouter.CreateForgetPasswordScreenViewController()
                LoginRouter.CreateLoginViewController()
                
=======
//            else{
            UIApplication.shared.windows.first? .rootViewController = UINavigationController(rootViewController: tabBarRouter.CreateLoginViewController())
>>>>>>> 758f2affae4ed81fa4fbf1665d16da8d896d6f59
                                }
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
    }
    
