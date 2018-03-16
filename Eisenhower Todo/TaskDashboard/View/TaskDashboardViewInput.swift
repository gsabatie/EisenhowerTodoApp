//
//  TaskDashboardTaskDashboardViewInput.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

protocol TaskDashboardViewInput: class {

    /**
        @author sabati_g
        Setup initial state of the view
    */

    func setupInitialState()
    
    func display(task: [Task])
    
    func displayAlertMessage(messageToDisplay: String)
    
    func startDisplayLoading()
    
    func endDisplayLoading()
}
