//
//  ResturantPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
class  ResturantPresenter: BasePresenter {
   weak var view: ResturantViewProtocol?
    var router: ResturantRouter
    init(view: ResturantViewProtocol?,router: ResturantRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension ResturantPresenter: ResturantPresenterProtocol{
    
    }
     
