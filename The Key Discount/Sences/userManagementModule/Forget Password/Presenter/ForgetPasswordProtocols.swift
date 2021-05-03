//
//  ForgetPasswordProtocols.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/3/21.
//

import Foundation

protocol  ForgetPasswordViewProtocol: baseViewProtocols {
    var presenter:  ForgetPasswordPresenterProtocol? {get set}
}

protocol  ForgetPasswordPresenterProtocol: basePresenterProtocols {
    var view:  ForgetPasswordViewProtocol? {get set}
    
}
