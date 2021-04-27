//
//  SplashScreenPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
class  splashPresenter: BasePresenter {
   weak var view: splashViewProtocol?
    var router: splashScreenRouter
    init(view: splashViewProtocol?,router: splashScreenRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension splashPresenter: splashPresenterProtocol{
    
    }
     
