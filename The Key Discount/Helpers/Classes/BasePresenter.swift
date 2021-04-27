//
//  BasePresenter.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
class BasePresenter: basePresenterProtocols{
    func showError(error: String){
        print("error", error)
    }
    
}
extension BasePresenter{
    func showAlertError(error: String) {
        self.showError(error: error)
    }
}

