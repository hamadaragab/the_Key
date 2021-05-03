//
//  ResturantProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import Foundation
protocol  ResturantViewProtocol: baseViewProtocols {
    var presenter:  ResturantPresenterProtocol? {get set}
}

protocol  ResturantPresenterProtocol: basePresenterProtocols {
    var view:  ResturantViewProtocol? {get set}
    
  
}
