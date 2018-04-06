//
//  LoginLoginViewController.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

<<<<<<< Updated upstream
class LoginViewController: UIViewController {
=======
class LoginViewController: UIViewController, GIDSignInUIDelegate  {
>>>>>>> Stashed changes

    var output: LoginViewOutput!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
<<<<<<< Updated upstream
=======
    
    @IBAction func handleGoogleButtonClick(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
>>>>>>> Stashed changes

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        
        GIDSignIn.sharedInstance().uiDelegate = self
    }


    // MARK: LoginViewInput
    func setupInitialState() {
    }

    @IBAction func signInButtonDidTouched(_ sender: Any) {
        output.signinButtonDidTouched()
    }

    @IBAction func loginButtonDidTouched(_ sender: UIButton) {
        output.loginButtonDidTouched()
    }
    
    @IBAction func googleSignInButtonDidTouched(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn();
    }
}

extension LoginViewController: LoginViewInput {
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
