//
//  AddTaskAddTaskViewOutput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

protocol AddTaskViewOutput {

    /**
        @author Guillaume Sabatie
        Notify presenter that view is ready
    */

    func viewIsReady()
    func saveButtonDidTouch()
    func deleteButtonDidTouch()
    func importantButtonDidTouch()
}
