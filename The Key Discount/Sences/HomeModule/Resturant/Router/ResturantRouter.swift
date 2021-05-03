//
//  ResturantRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import UIKit
class ResturantRouter {
    
    class func CreateResturantViewController()-> UIViewController {
        let ResturantView = ResturantViewController.loadFromStoryboard(name: "ResturantView")
        let view = ResturantView as? ResturantViewProtocol
        let router = ResturantRouter()
        let presenter = ResturantPresenter(view: view,router: router)
        view?.presenter = presenter
        return ResturantView
    }
}
