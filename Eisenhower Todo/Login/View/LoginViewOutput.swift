//
//  LoginLoginViewOutput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

protocol LoginViewOutput {

    /**
        @author Guillaume Sabatie
        Notify presenter that view is ready
    */

    func viewIsReady()
    func loginButtonDidTouched()
    func signinButtonDidTouched()
}
