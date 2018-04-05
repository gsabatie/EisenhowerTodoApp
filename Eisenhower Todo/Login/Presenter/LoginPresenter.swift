//
//  LoginLoginPresenter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class LoginPresenter: LoginModuleInput {


    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!

    func viewIsReady() {

    }
}

extension LoginPresenter: LoginViewOutput {
    func loginButtonDidTouched() {
        guard let email = view.getEmail(), !email.isEmpty else {
            return // empty email error
        }

        guard let password = view.getPassword(), !password.isEmpty else {
            return // empty password error
        }
        interactor.signInUser(withUserCredential: UserCredential(email: email, password: password))
    }

    func signinButtonDidTouched() {
        router.presentSignupModule()
    }


}

extension LoginPresenter: LoginInteractorOutput {
    func didConnected(user: AppUser) {
        router.presentTaskDashBoardModule()
    }

    func didFailSignin(withMessage: String) {
        view.displayError(message: withMessage)
    }

}
