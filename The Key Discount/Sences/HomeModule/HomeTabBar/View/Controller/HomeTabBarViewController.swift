//
//  HomeTabBarViewController.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import UIKit
import SideMenu

class HomeTabBarViewController: BaseViewController {

    @IBOutlet weak var resturantBTN: UIButton!
    @IBOutlet weak var bookingBTN: UIButton!
    @IBOutlet weak var market: UIButton!
    @IBOutlet weak var homeBTN: UIButton!
    @IBOutlet weak var hotelsBTN: UIButton!
    @IBOutlet weak var containerView: UIView!
    var ViewControllers: [UIViewController]!
    var buttons: [UIButton]!
    var selectedIndex: Int = 0
    var presenter: tabBarPresenterProtocol?
    var isOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewControllers()
        setButtonstitels()
        setUpView()
        setUpNavigationController()
        setUpMenu()
    }
    
    
    @IBAction func tabsButtonTapped(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons![previousIndex].isSelected = false
        let previousVC = ViewControllers[previousIndex]
        previousVC.willMove(toParent: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParent()
        sender.isSelected = true
        let vc = ViewControllers[selectedIndex]
        addChild(vc)
        vc.view.frame = containerView.bounds
        containerView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    @IBAction func searchTapped(_ sender: Any) {
    }
    @IBAction func sideMenuTapped(_ sender: Any) {
       
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
        
        if sidemenu.isViewLoaded {
            print("isBeingPresented",sidemenu.isViewLoaded)
        }
        present(sidemenu, animated: true, completion: nil)
        print("isBeingPresented",sidemenu.isViewLoaded)
    }
}
