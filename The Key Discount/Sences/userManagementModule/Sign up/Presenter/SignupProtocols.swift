//
//  SigninProtocols.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/2/21.
//

import Foundation
protocol  SignupViewProtocol: baseViewProtocols {
    var presenter:  SignupPresenterProtocol? {get set}
}

protocol  SignupPresenterProtocol: basePresenterProtocols {
    var view:  SignupViewProtocol? {get set}
    
  
}
