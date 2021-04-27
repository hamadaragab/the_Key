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
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            if let token =  UserDefaults.standard.string(forKey: "USER_TOKEN_KEY"), !token.isEmpty{
//                UIApplication.shared.windows.first?.rootViewController = UINavigationController(rootViewController:HomeRouter.CreateHomeViewController())
//            }
//            else{
                UIApplication.shared.windows.first? .rootViewController = LoginRouter.CreateLoginViewController()
                                }
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
    }
    
