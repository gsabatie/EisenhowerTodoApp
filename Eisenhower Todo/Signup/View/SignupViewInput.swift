//
//  SignupSignupViewInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

protocol SignupViewInput: class {

    /**
        @author Guillaume Sabatie
        Setup initial state of the view
    */

    func setupInitialState()
    
    func getUsername() -> String?
    func getEmail() -> String?
    func getPassword() -> String?
    func getSecondPassword() -> String?
    func getUserDescription() -> String?

    func displaySignupError(message:String)
}
