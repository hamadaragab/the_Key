//
//  SigninPresenter.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/2/21.
//

import Foundation
class  signupPresenter: BasePresenter {
   weak var view: SignupViewProtocol?
    var router: SignUpRouter
    init(view: SignupViewProtocol?,router: SignUpRouter)
    {
        self.router = router
        self.view = view
    }
}

extension signupPresenter: SignupPresenterProtocol{
    
    }
