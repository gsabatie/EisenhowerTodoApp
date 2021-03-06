//
//  SignupSignupPresenter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class SignupPresenter{

    weak var view: SignupViewInput!
    var interactor: SignupInteractorInput!
    var router: SignupRouterInput!

}

extension SignupPresenter :  SignupModuleInput{
    func setEditUserStyle() {
         interactor.getCurrentUser()
    }
}


extension SignupPresenter :  SignupViewOutput{
    func createAccountButtonDidTouched() {
        guard let email = view.getEmail(),  let username = view.getUsername(), let password = view.getPassword(),  let secondPassword = view.getSecondPassword(), !email.isEmpty && !username.isEmpty && !password.isEmpty && !secondPassword.isEmpty  else {
            return
        }
        
        if password == secondPassword {
            let user = AppUser(id: "", login: username, bio: view.getUserDescription() ?? "", email: email, profilePictureURL: "")
            interactor.create(user: user, withPassword: password)
        }
    }
    
    func viewIsReady() {
        interactor.getCurrentUser()
    }

    func logoutButtonDidTouch() {
        interactor.logoutCurrentUser()
    }
}

extension SignupPresenter :  SignupInteractorOutput{
    func current(userSigned: AppUser) {
        view.setupInitialState(with: userSigned)
    }
    
    func createUserDidSucceed() {
        router.pushToTasksDashboard()
    }
    
    func createUserDidFailed(message: String) {
        view.displaySignupError(message: message)
    }

    func signoutUserDidSucceed() {
        router.presentLoginModule()
    }

    func signoutUserDidFailed(with message: String) {
        view.displaySignupError(message: message)
    }
}
