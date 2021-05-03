//
//  MarketPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//
import Foundation
class  MarketPresenter: BasePresenter {
   weak var view: MarketViewProtocol?
    var router: MarketRouter
    init(view: MarketViewProtocol?,router: MarketRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension MarketPresenter: MarketPresenterProtocol{
    
    }
     
