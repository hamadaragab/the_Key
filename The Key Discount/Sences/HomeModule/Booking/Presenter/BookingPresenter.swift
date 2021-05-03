//
//  BookingPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
class  BookingPresenter: BasePresenter {
   weak var view: BookingViewProtocol?
    var router: BookingRouter
    init(view: BookingViewProtocol?,router: BookingRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension BookingPresenter: BookingPresenterProtocol{
    
    }
     
