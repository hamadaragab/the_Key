//
//  BaseViewController.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import Foundation
import UIKit
class  BaseViewController: UIViewController {
    override func viewDidLoad() {
           super.viewDidLoad()
       }
   }
extension BaseViewController: baseViewProtocols{
    
    func showAlert(title: String, message: String, photo: alert_icon) {
        showAlert(title: title, message: message, photo: photo, viewcontroller: self)
    }
    func hideKeyBoard() {
           let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
           tap.cancelsTouchesInView = false
           view.addGestureRecognizer(tap)
       }
       
       @objc func dismissKeyboard() {
           view.endEditing(true)
       }
//       func showLoading() {
//        loadinView.view.frame = self.view.frame
//        self.view.addSubview(loadinView.view)
//       }
       
//       func hideLoading() {
//        loadinView.dissmissLoading()
//
//       }
    func showAlertWithTwoButton(title: String, message: String, photo: alert_icon, viewcontroller: UIViewController,okAction:@escaping () -> Void,  cancelAction: @escaping () -> Void = {})
    {
        let vc = alertWithTwoButtons.loadFromNib()
        vc.errorTitle = title
        vc.errorMessage = message
        vc.image = photo
        vc.cancelAction = cancelAction
        vc.OkAction = okAction
        vc.addToSuperView(vc: viewcontroller)
    }
    func showAlert(title: String, message: String, photo: alert_icon, viewcontroller: UIViewController, doSomething: @escaping () -> Void = {})
    {
        let vc = alertWithOneButton.loadFromNib()
        vc.errorTitle = title
        vc.errorMessage = message
        vc.image = photo
        vc.ButtonAction = doSomething
        vc.addToSuperView(vc: viewcontroller)
    }
    
   }
