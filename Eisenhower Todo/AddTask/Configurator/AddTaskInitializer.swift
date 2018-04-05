//
//  AddTaskAddTaskInitializer.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class AddTaskModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var addtaskViewController: AddTaskViewController!

    override func awakeFromNib() {

        let configurator = AddTaskModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: addtaskViewController)
    }

}
