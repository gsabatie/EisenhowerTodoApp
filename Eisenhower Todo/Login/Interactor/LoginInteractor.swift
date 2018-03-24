//
//  LoginLoginInteractor.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class LoginInteractor {

    weak var output: LoginInteractorOutput!
     var loginService: LoginAuthServiceInput!

}

extension LoginInteractor: LoginInteractorInput {
    func signInUser(withUserCredential credential:UserCredential) {
        loginService.userauth(withEmail: credential.email, andPassword: credential.password)
    }
    func requestNewPassword(){
        
    }
}

extension LoginInteractor : LoginAuthServiceOutput {
    func userAuthSuccess(user: AppUser) {
        output.didConnected(user: user)
    }
    
    func userAuthFailure(message: String) {
        output.didFailSignin(withMessage: message)
    }
    

}
