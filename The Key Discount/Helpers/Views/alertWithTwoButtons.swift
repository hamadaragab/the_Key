//
//  alertWithTwoButtons.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import UIKit
import Spring
class alertWithTwoButtons: UIViewController {
        @IBOutlet weak var alertView: SpringView!
        @IBOutlet weak var imageIcon: UIImageView!
        @IBOutlet weak var titleLBL: UILabel!
        @IBOutlet weak var message: UILabel!
        @IBOutlet weak var Ok: UIButton!
        @IBOutlet weak var cancelBTN: UIButton!
        var errorMessage:String?
        var errorTitle:String?
        var image: alert_icon?
        var cancelAction: (() -> ())?
        var OkAction: (() -> ())?
        override func viewDidLoad() {
            super.viewDidLoad()
            setUpView()
        }
        
        private func setUpView()
        {
            if let eMsg = errorMessage{
                message.text = eMsg
            }
            
            if let eTitle = errorTitle{
                titleLBL.text = eTitle
            }
            if let image = image
            {
                imageIcon.image = UIImage(named: image.rawValue)
            }
            else {
                imageIcon.image = UIImage(named: "information")
            }
            alertView.animation = "pop"
            alertView.autostart = true
            alertView.duration = 0.8
            alertView.animate()
        }
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            UIView.animate(withDuration: 0.2) {
                self.alertView.transform = .identity
            }
            
        }
        
        @IBAction func Ok_Tapped(_ sender: Any) {
            UIView.animate(withDuration: 0.2, animations: {
                self.alertView.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
            }) { [self] (done) in
                self.OkAction?()
                self.view.removeFromSuperview()
                self.removeFromParent()
            }
        }
        
        @IBAction func Cancel(_ sender: UIButton) {
            UIView.animate(withDuration: 0.2, animations: {
                self.alertView.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
            }) { [self] (done) in
                self.cancelAction?()
                self.view.removeFromSuperview()
                self.removeFromParent()
            }
        }
        func addToSuperView(vc:UIViewController){
            vc.addChild(self)
            self.view.frame = vc.view.frame
            vc.view.addSubview(self.view)
        }
    }


