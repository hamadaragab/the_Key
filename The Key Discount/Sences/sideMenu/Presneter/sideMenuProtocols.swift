//
//  sideMenuProtocols.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
protocol  sideMenuViewProtocol: baseViewProtocols {
    var presenter:  sideMenuPresenterProtocol? {get set}
}

protocol  sideMenuPresenterProtocol: basePresenterProtocols {
    var view: sideMenuViewProtocol? {get set}
    func isSideMenuOpen()-> Bool
}
