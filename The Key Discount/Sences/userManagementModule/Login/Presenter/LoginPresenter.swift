//
//  LoginPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
class  loginPresenter: BasePresenter {
   weak var view: LoginViewProtocol?
    var router: LoginRouter
    init(view: LoginViewProtocol?,router: LoginRouter)
    {
        self.router = router
        self.view = view
    }
    }

extension loginPresenter: LoginPresenterProtocol{
    
    }
     
