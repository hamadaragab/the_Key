//
//  ForgetPasswordViewController.swift
//  The Key Discount
//
//  Created by Boo Doo on 5/2/21.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    //Outlets
    @IBOutlet weak var firstNumTextField: TextFieldWithShadow!
    
    @IBOutlet weak var secondNumTextField: TextFieldWithShadow!
    
    @IBOutlet weak var fourthNumTextField: TextFieldWithShadow!
    @IBOutlet weak var thirdNumTextField: TextFieldWithShadow!
    
    @IBOutlet weak var errorMessage: UIStackView!
    @IBOutlet weak var errorContentLabel: UILabel!
    
    //View Load
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //Actions
    @IBAction func resendCodeClicked(_ sender: Any) {
    }
    
    @IBAction func enterClicked(_ sender: Any) {
    }
    
    
}
