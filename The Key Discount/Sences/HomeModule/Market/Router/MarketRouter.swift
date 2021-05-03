//
//  MarketRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import UIKit
class MarketRouter {
    
    class func CreateMarketViewController()-> UIViewController {
        let MarketView = MarketViewController.loadFromStoryboard(name: "MarketView")
        let view = MarketView as? MarketViewProtocol
        let router = MarketRouter()
        let presenter = MarketPresenter(view: view,router: router)
        view?.presenter = presenter
        return MarketView
    }
}
