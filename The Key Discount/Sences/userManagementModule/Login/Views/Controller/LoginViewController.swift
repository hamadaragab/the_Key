//
//  LoginViewController.swift
//  The Key Discount
//
//  Created by Apple on 4/26/21.
//

import UIKit

class LoginViewController: UIViewController {

    //Outlets
    @IBOutlet weak var emailTextField: TextFieldWithShadow!
    @IBOutlet weak var emailErrorMessage: UIStackView!
    @IBOutlet weak var emailErrorContentLabel: UILabel!
    
    
    @IBOutlet weak var passwordTextField: TextFieldWithShadow!
    @IBOutlet weak var passwordErrorMessage: UIStackView!
    @IBOutlet weak var passwordErrorContentLabel: UILabel!
    
    
    //View load
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //Actions
    @IBAction func createAccountClicked(_ sender: Any) {
    }
    
    @IBAction func forgetPasswordClicked(_ sender: Any) {
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
    }
    
    //or sign in with
    @IBAction func googleClicked(_ sender: Any) {
    }
    
    @IBAction func facebookClicked(_ sender: Any) {
    }
    
    @IBAction func tweeterClicked(_ sender: Any) {
    }

}
