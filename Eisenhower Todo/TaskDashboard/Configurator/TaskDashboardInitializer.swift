//
//  TaskDashboardTaskDashboardInitializer.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class TaskDashboardModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var taskdashboardViewController: TaskDashboardViewController!

    override func awakeFromNib() {

        let configurator = TaskDashboardModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: taskdashboardViewController)
    }

}
