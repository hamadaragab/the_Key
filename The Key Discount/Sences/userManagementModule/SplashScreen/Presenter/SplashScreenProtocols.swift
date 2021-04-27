//
//  SplashScreenProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
protocol  splashViewProtocol: baseViewProtocols {
    var presenter:  splashPresenterProtocol? {get set}
}

protocol  splashPresenterProtocol: basePresenterProtocols {
    var view:  splashViewProtocol? {get set}
    
  
}
