//
//  LoginLoginViewInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

protocol LoginViewInput: class {

    /**
        @author Guillaume Sabatie
        Setup initial state of the view
    */

    func setupInitialState()
    func getPassword() -> String?
    func getEmail() -> String?

    func displayError(message: String)
}
