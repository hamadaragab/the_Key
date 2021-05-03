//
//  ForgetPassword.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/3/21.
//

import Foundation

class  forgetPasswordPresenter: BasePresenter {
   weak var view: ForgetPasswordViewProtocol?
    var router: ForgetPasswordRouter
    init(view: ForgetPasswordViewProtocol?,router: ForgetPasswordRouter)
    {
        self.router = router
        self.view = view
    }
}

extension forgetPasswordPresenter: ForgetPasswordPresenterProtocol{
    
}
