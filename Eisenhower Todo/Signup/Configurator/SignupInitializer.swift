//
//  SignupSignupInitializer.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class SignupModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var signupViewController: SignupViewController!

    override func awakeFromNib() {

        let configurator = SignupModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: signupViewController)
    }

}
