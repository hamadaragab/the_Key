//
//  sideMenuViewExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import Foundation
import UIKit
extension sideMenuViewController: sideMenuViewProtocol{
}
extension sideMenuViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sideMenuItems.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if sideMenuItems[section].isExpanding {
            return sideMenuItems[section].sectionData.count + 1
        }
        else {
           return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row - 1
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: sideMenuCellIdentifier, for: indexPath) as! sideMenuCell
            cell.titleLBL.text = sideMenuItems[indexPath.section].titel
            cell.iconImage.image = sideMenuItems[indexPath.section].image
            
        return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: sideMenuCellIdentifier, for: indexPath) as! sideMenuCell
            cell.titleLBL.text = sideMenuItems[indexPath.section].sectionData[row].titleText
            cell.iconImage.image = sideMenuItems[indexPath.section].sectionData[row].titleIamge
            return cell
        }
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0 :
            if sideMenuItems[indexPath.section].isExpanding == true {
                sideMenuItems[indexPath.section].isExpanding = false
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .fade)
                switch indexPath.row {
                case 1:
                    print("Row",indexPath.row)
                case 2:
                    print("Row",indexPath.row)
                default:
                    print("Row",indexPath.row)
                }
            }
            else {
                sideMenuItems[indexPath.section].isExpanding = true
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .fade)
            }
        default:
            print("Row",indexPath.row)
        }
    }
    
}
