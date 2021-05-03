//
//  HomeTabExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
import SideMenu
extension HomeTabBarViewController: tabBarViewProtocol{

}
extension HomeTabBarViewController {
     func setUpNavigationController()
    {
        navigationItem.titleView = UIImageView(image: UIImage(named: "theKey"))
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
     func setUpView()
    {
        buttons = [resturantBTN,hotelsBTN,homeBTN,market,bookingBTN]
        buttons![selectedIndex].isSelected = true
        tabsButtonTapped(buttons![selectedIndex])
        
    }
     func createViewControllers()
    {
        let resturantViewController = ResturantRouter.CreateResturantViewController()
        let hotelViewController = HotelsRouter.CreateHotelsViewController()
        let homeViewController = HomeRouter.CreateHomeViewController()
        let marketViewController = MarketRouter.CreateMarketViewController()
        let bookingViewController = BookingRouter.CreateBookingViewController()
        
        ViewControllers = [resturantViewController,hotelViewController,homeViewController,marketViewController,bookingViewController]
    }
    
    func setButtonstitels()
    {
        resturantBTN.setButtonWithTitel(image: #imageLiteral(resourceName: "Restaurants"), selectedImage: #imageLiteral(resourceName: "Restaurants"))
        hotelsBTN.setButtonWithTitel(image: #imageLiteral(resourceName: "Hotels & Flight"), selectedImage: #imageLiteral(resourceName: "Hotels & Flight"))
        market.setButtonWithTitel(image: #imageLiteral(resourceName: "Market"), selectedImage: #imageLiteral(resourceName: "Market"))
        bookingBTN.setButtonWithTitel(image: #imageLiteral(resourceName: "Booking"), selectedImage: #imageLiteral(resourceName: "Booking"))

    }
     func setUpMenu()
    {
        let sidemenu = UIStoryboard(name: "sideMenuView", bundle: nil).instantiateViewController(identifier: "sideMenuView") as! SideMenuNavigationController
        if Constant.shared.isRTLLanguage() {
        SideMenuManager.default.leftMenuNavigationController = nil
        SideMenuManager.default.rightMenuNavigationController = sidemenu
        sidemenu.leftSide = false
        }
        else {
            SideMenuManager.default.leftMenuNavigationController = sidemenu
            SideMenuManager.default.rightMenuNavigationController = nil
            sidemenu.leftSide = true
            
        }
        sidemenu.menuWidth = (self.containerView.bounds.width) * (0.70)
        sidemenu.dismissOnPresent = true
        sidemenu.dismissOnPush = true
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
        
}
