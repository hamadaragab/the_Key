//
//  BookingRouter.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import UIKit
class BookingRouter {
    
    class func CreateBookingViewController()-> UIViewController {
        let BookingView = BookingViewController.loadFromStoryboard(name: "BookingView")
        let view = BookingView as? BookingViewProtocol
        let router = BookingRouter()
        let presenter = BookingPresenter(view: view,router: router)
        view?.presenter = presenter
        return BookingView
    }
}
