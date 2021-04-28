//
//  tabBarProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//tabBar

import Foundation
protocol  tabBarViewProtocol: baseViewProtocols {
    var presenter:  tabBarPresenterProtocol? {get set}
}

protocol  tabBarPresenterProtocol: basePresenterProtocols {
    var view: tabBarViewProtocol? {get set}
    
  
}
