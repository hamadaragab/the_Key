//
//  HotelsPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//
import Foundation
class  HotelsPresenter: BasePresenter {
   weak var view: HotelsViewProtocol?
    var router: HotelsRouter
    init(view: HotelsViewProtocol?,router: HotelsRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension HotelsPresenter: HotelsPresenterProtocol{
    
    }
     
