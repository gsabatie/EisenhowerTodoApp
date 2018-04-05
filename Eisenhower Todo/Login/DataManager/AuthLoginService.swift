//
//  AuthLoginService.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 18/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import FirebaseAuth

class AuthLoginService {
    weak var output: LoginAuthServiceOutput!

}

extension AuthLoginService: LoginAuthServiceInput {
    func userauth(withEmail email: String, andPassword password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            guard error == nil else {
                self.output.userAuthFailure(message: error!.localizedDescription)
                return
            }
            if let user = user {
                self.output.userAuthSuccess(user: AppUser(firebaseUser: user))
            }
        }

    }


}
