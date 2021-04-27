//
//  tabBarPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
class  tabBarPresenter: BasePresenter {
   weak var view: tabBarViewProtocol?
    var router: tabBarRouter
    init(view: tabBarViewProtocol?,router: tabBarRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension tabBarPresenter: tabBarPresenterProtocol{
    
    }
     
