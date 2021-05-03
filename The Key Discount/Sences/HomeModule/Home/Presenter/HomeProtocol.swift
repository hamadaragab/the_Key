//
//  HomeProtocol.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
protocol  HomeViewProtocol: baseViewProtocols {
    var presenter:  HomePresenterProtocol? {get set}
}

protocol  HomePresenterProtocol: basePresenterProtocols {
    var view: HomeViewProtocol? {get set}
    
  
}
