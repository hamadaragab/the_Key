//
//  BasesProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
protocol baseViewProtocols: class {
//    func showLoading()
//    func hideLoading()
    func hideKeyBoard()
    func showAlert(title: String, message: String,photo: alert_icon)
}
protocol basePresenterProtocols: class {
    func showAlertError(error: String)
}

