//
//  HomePresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
class  HomePresenter: BasePresenter {
   weak var view: HomeViewProtocol?
    var router: HomeRouter
    init(view: HomeViewProtocol?,router: HomeRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension HomePresenter: HomePresenterProtocol{
    
    }
     
