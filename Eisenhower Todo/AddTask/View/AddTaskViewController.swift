//
//  AddTaskAddTaskViewController.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit
import TimePicker

class AddTaskViewController: UIViewController {

    var output: AddTaskViewOutput!

    @IBOutlet private weak var taskNameTextField: UITextField!
    @IBOutlet private weak var importantTaskButton: UIButton!
    @IBOutlet private weak var taskDescriptionTextView: UITextView!
    @IBOutlet private weak var dueDateTextField: UITextField!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: AddTaskViewInput
    func setupInitialState() {
        dueDateTextField.inputView = TimePicker()
    }

    @IBAction func importantButtonDidTouch(_ sender: Any) {
        output.importantButtonDidTouch()
    }

    @IBAction func saveButtonDidTouch(_ sender: Any) {
        output.saveButtonDidTouch()
    }

    @IBAction func deleteButtonDidTouch(_ sender: Any) {
        output.deleteButtonDidTouch()
    }
}

extension AddTaskViewController: AddTaskViewInput {
    func getTaskName() -> String? {
        return taskNameTextField.text
    }

    func getTaskDescription() -> String? {
        return taskDescriptionTextView.text
    }

    func getTaskDueDate() -> Date? {
        return Date()
    }

    func setup(with task: Task) {
        taskNameTextField.text = task.name
        taskDescriptionTextView.text = task.contentDescription
        dueDateTextField.text = ""
    }
}

extension AddTaskViewController: UITextFieldDelegate {

}