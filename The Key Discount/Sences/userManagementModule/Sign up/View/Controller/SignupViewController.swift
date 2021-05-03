//
//  SignupViewController.swift
//  The Key Discount
//
//  Created by Boo Doo on 4/28/21.
//

import UIKit

class SignupViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var userNameTextField: TextFieldWithShadow!
    @IBOutlet weak var userNameErrorMessage: UIStackView!
    @IBOutlet weak var userNameErrorContentLabel: UILabel!
    
    
    @IBOutlet weak var emailTextField: TextFieldWithShadow!
    @IBOutlet weak var emailErrorMessage: UIStackView!
    @IBOutlet weak var emailErrorContentLabel: UILabel!
    
    
    @IBOutlet weak var passwordTextField: TextFieldWithShadow!
    @IBOutlet weak var passwordErrorMessage: UIStackView!
    @IBOutlet weak var passwordErrorContentLabel: UILabel!
    
    
    @IBOutlet weak var confirmPasswordTextField: TextFieldWithShadow!
    @IBOutlet weak var confirmPasswordErrorMessage: UIStackView!
    @IBOutlet weak var confirmPassErrorContentLabel: UILabel!
    
    
    //View load
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //Actions
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
