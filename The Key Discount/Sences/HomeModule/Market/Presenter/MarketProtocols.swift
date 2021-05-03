//
//  MarketProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
protocol  MarketViewProtocol: baseViewProtocols {
    var presenter:  MarketPresenterProtocol? {get set}
}

protocol  MarketPresenterProtocol: basePresenterProtocols {
    var view:  MarketViewProtocol? {get set}
    
  
}
