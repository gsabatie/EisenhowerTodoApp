//
//  SignupSignupInteractor.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class SignupInteractor  {

    weak var output: SignupInteractorOutput!
    var userService: UserCreationServiceInput!

}

extension SignupInteractor: SignupInteractorInput{
    func create(user: AppUser, withPassword password: String) {
        userService.createUser(username: user.login, email: user.email, password:password, description: user.bio)
    }
}

extension SignupInteractor:  UserCreationServiceOutput {
    func createUserDidFailed(message: String) {
        output.createUserDidFailed(message: message)
    }
    
    func createUserDidSucceed() {
        output.createUserDidSucceed()
    }
}
