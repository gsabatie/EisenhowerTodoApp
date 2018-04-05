//
//  SignupSignupInteractor.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class SignupInteractor {

    weak var output: SignupInteractorOutput!
    var userService: UserCreationServiceInput!

}

extension SignupInteractor: SignupInteractorInput {
    func getCurrentUser() {
        userService.getSignedUser()
    }

    func create(user: AppUser, withPassword password: String) {
        userService.createUser(username: user.login, email: user.email, password: password, description: user.bio)
    }

    func logoutCurrentUser() {
        userService.logoutSignedUser()
    }
}

extension SignupInteractor: UserCreationServiceOutput {

    func createUserDidFailed(message: String) {
        output.createUserDidFailed(message: message)
    }

    func createUserDidSucceed() {
        output.createUserDidSucceed()
    }

    func currentSignedUser(user: AppUser?) {
        if let user = user {
            output.current(userSigned: user)
        }
    }

    func signoutUserDidSuccess() {
        output.signoutUserDidSucceed()
    }

    func signoutUserDidFail(with message: String) {
        output.signoutUserDidFailed(with: message)
    }
}
