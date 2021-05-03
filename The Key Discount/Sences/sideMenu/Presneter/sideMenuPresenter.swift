//
//  sideMenuPresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
class  sideMenuPresenter: BasePresenter {
   weak var view: sideMenuViewProtocol?
    var router: sideMenutRouter
    var isOpen = false
    init(view: sideMenuViewProtocol?,router: sideMenutRouter, isOpen: Bool)
    {
        self.router = router
        self.view = view
        self.isOpen = isOpen
    }
    }

extension sideMenuPresenter: sideMenuPresenterProtocol{
    func isSideMenuOpen() -> Bool {
        return isOpen
    }
    }
     
