//
//  sideMenuViewController.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import UIKit

class sideMenuViewController: BaseViewController {

    @IBOutlet weak var sideMenuTable: UITableView!
    @IBOutlet weak var leadingTableConstraints: NSLayoutConstraint!
    let sideMenuCellIdentifier = "sideMenuCell"
    var presenter: sideMenuPresenterProtocol?
    let restuarntData: [SideMenuData] = [SideMenuData(titleIamge: UIImage(named: "Social_Media")!, titleText: "Social_Media".localized),SideMenuData(titleIamge: UIImage(named: "Fast_Food")!, titleText: "Fast_Food".localized),SideMenuData(titleIamge: UIImage(named: "Grill")!, titleText: "Grill".localized),SideMenuData(titleIamge: UIImage(named: "Pizza")!, titleText: "Pizza".localized),SideMenuData(titleIamge: UIImage(named: "Drink")!, titleText: "Drink".localized)]
    let HotelsData: [SideMenuData] = [SideMenuData(titleIamge: UIImage(named: "Social_Media")!, titleText: "Social_Media".localized),SideMenuData(titleIamge: UIImage(named: "Hotels")!, titleText: "Hotels".localized),SideMenuData(titleIamge: UIImage(named: "Flights")!, titleText: "Flights".localized)]
    var sideMenuItems: [CellData] = [CellData]()
        
       
    
    
    
    
    
    
    
    
//    let sideMenuItems: [SideMenuData] = [SideMenuData(titleIamge: UIImage(named: "HomeImage")!, titleText: "Home".localized),SideMenuData(titleIamge: UIImage(named: "historyImage")!, titleText: "My History".localized),SideMenuData(titleIamge: UIImage(named: "restaurantImage")!, titleText: "Restaurants".localized),SideMenuData(titleIamge: UIImage(named: "hotlesImage")!, titleText: "Hotels & Flights".localized),SideMenuData(titleIamge: UIImage(named: "stores")!, titleText: "Stores".localized),SideMenuData(titleIamge: UIImage(named: "Jobs")!, titleText: "Jobs".localized),SideMenuData(titleIamge: UIImage(named: "couponsImage")!, titleText: "Coupons".localized),SideMenuData(titleIamge: UIImage(named: "InviteImage")!, titleText: "Invite Friends".localized),SideMenuData(titleIamge: UIImage(named: "SettingImage")!, titleText: "Settings".localized),SideMenuData(titleIamge: UIImage(named: "helpImage")!, titleText: "Help & Feedback".localized),SideMenuData(titleIamge: UIImage(named: "logoutImage")!, titleText: "Logout".localized)]
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setUpView()
       
           }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    private func setUpView()
    {
        sideMenuItems =  [CellData(isExpanding: false, sectionData: restuarntData, titel: "Home".localized , image: UIImage(named: "HomeImage")!),CellData(isExpanding: false, sectionData: [], titel: "My History".localized , image: UIImage(named:"historyImage")!),CellData(isExpanding: false, sectionData: [], titel: "Restaurants".localized , image: UIImage(named:"restaurantImage")!),CellData(isExpanding: false, sectionData: [], titel: "Hotels & Flights".localized , image: UIImage(named:"hotlesImage")!),CellData(isExpanding: false, sectionData: [], titel: "stores".localized , image: UIImage(named:"stores")!),CellData(isExpanding: false, sectionData: [], titel: "Jobs".localized , image: UIImage(named:"Jobs")!),CellData(isExpanding: false, sectionData: [], titel: "Coupons".localized , image: UIImage(named:"couponsImage")!),CellData(isExpanding: false, sectionData: [], titel: "Invite Friends".localized , image: UIImage(named:"InviteImage")!),CellData(isExpanding: false, sectionData: [], titel: "Settings".localized , image: UIImage(named:"SettingImage")!),CellData(isExpanding: false, sectionData: [], titel: "Help & Feedback".localized , image: UIImage(named:"helpImage")!),CellData(isExpanding: false, sectionData: [], titel: "Logout".localized , image: UIImage(named:"logoutImage")!)]
    }
    private func setUpTableView()
    {
        sideMenuTable.delegate = self
        sideMenuTable.dataSource = self
        sideMenuTable.tableFooterView = UIView()
        let sideMenuNIB = UINib(nibName: sideMenuCellIdentifier, bundle: nil)
        sideMenuTable.register(sideMenuNIB, forCellReuseIdentifier: sideMenuCellIdentifier)
    }
    
}
