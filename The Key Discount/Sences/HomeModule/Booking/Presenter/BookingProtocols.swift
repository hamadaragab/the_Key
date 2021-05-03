//
//  BookingProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
protocol  BookingViewProtocol: baseViewProtocols {
    var presenter:  BookingPresenterProtocol? {get set}
}

protocol  BookingPresenterProtocol: basePresenterProtocols {
    var view:  BookingViewProtocol? {get set}
    
  
}
