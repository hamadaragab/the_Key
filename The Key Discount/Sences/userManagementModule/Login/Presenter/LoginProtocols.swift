//
//  LoginProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
protocol  LoginViewProtocol: baseViewProtocols {
    var presenter:  LoginPresenterProtocol? {get set}
}

protocol  LoginPresenterProtocol: basePresenterProtocols {
    var view:  LoginViewProtocol? {get set}
    
  
}
