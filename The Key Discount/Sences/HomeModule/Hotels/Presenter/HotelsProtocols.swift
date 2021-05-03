//
//  HotelsProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
protocol  HotelsViewProtocol: baseViewProtocols {
    var presenter:  HotelsPresenterProtocol? {get set}
}

protocol  HotelsPresenterProtocol: basePresenterProtocols {
    var view:  HotelsViewProtocol? {get set}
    
  
}
