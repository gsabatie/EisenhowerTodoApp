//
//  LoginLoginViewController.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController  {

    var output: LoginViewOutput!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: LoginViewInput
    func setupInitialState() {
    }

    @IBAction func signInButtonDidTouched(_ sender: Any) {
        output.loginButtonDidTouched()
    }
    @IBAction func loginButtonDidTouched(_ sender: UIButton) {
        output.loginButtonDidTouched()
    }
}

extension LoginViewController : LoginViewInput {
    func displayError(message: String) {
        let allertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let dissmisAction = UIAlertAction(title: "Ok", style: .cancel) { (action) in
            allertController.dismiss(animated: true, completion: nil)
        }
        allertController.addAction(dissmisAction)
        self.present(allertController, animated: true, completion: nil)
    }
    
    func getPassword() -> String? {
         return passwordTextField.text
    }
    
    func getEmail() -> String? {
         return emailTextField.text
    }
    
    
   
    
}
