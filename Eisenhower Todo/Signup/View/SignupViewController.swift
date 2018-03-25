//
//  SignupSignupViewController.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet private weak var userDescriptionTextField: UITextView!
    
    var output: SignupViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    @IBAction func SignuoButtonDidTouch(_ sender: Any) {
        output.createAccountButtonDidTouched()
    }
    
    // MARK: SignupViewInput
    func setupInitialState() {
    }
}

extension SignupViewController : SignupViewInput {
    func getUsername() -> String? {
        return usernameTextField.text
    }
    
    func getEmail() -> String? {
        return emailTextField.text
    }
    
    func getPassword() -> String? {
        return passwordTextField.text
    }
    
    func getSecondPassword() -> String? {
        return confirmPasswordTextField.text
    }
    
    func getUserDescription() -> String? {
        return userDescriptionTextField.text
    }
    
    func displaySignupError(message: String) {
        let allertViewController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .cancel) { (action) in
            allertViewController.dismiss(animated: true, completion: nil)
        }
        allertViewController.addAction(cancelAction)
        self.present(allertViewController, animated: true, completion: nil)
    }
    
    
}
