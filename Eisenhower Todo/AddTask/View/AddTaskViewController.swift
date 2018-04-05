//
//  AddTaskAddTaskViewController.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit
import DateTimePicker

class AddTaskViewController: UIViewController {

    var output: AddTaskViewOutput!
    var dateFormater: DateFormatter {
        let dateformater = DateFormatter()
        dateformater.dateFormat = "MM/dd/yyyy"
        return dateformater
    }
    @IBOutlet private weak var taskNameTextField: UITextField!
    @IBOutlet private weak var importantTaskButton: UIButton!
    @IBOutlet private weak var taskDescriptionTextView: UITextView!
    @IBOutlet private weak var dueDateTextField: UITextField!


    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        dueDateTextField.delegate = self
    }


    // MARK: AddTaskViewInput
    func setupInitialState() {

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
        if let text = dueDateTextField.text {
            return dateFormater.date(from: text)
        }
        return nil
    }

    func setup(with task: Task) {
        taskNameTextField.text = task.name
        taskDescriptionTextView.text = task.contentDescription
        dueDateTextField.text = dateFormater.string(from: task.dueDate)
    }

    func displayError(with message: String) {
        let allertViewController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .cancel) { (action) in
            allertViewController.dismiss(animated: true, completion: nil)
        }
        allertViewController.addAction(cancelAction)
        self.present(allertViewController, animated: true, completion: nil)
    }
}

extension AddTaskViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        let picker = DateTimePicker.show()
        picker.isDatePickerOnly = true
        picker.completionHandler = { date in

            textField.text = self.dateFormater.string(from: date)
        }
        return false
    }
}
