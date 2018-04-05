//
//  TaskDashboardTaskDashboardViewController.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit
import Windless

class TaskDashboardViewController: UIViewController, TaskDashboardViewInput {


    @IBOutlet private weak var taskCollectionView: UICollectionView!

    var output: TaskDashboardViewOutput!

    private let taskCellIdentifier = "TaskC"
    private let addTaskCellIdentifier = "AddC"
    private var tasks = [Task]()

    private var isLoading = false
    private var numberOfloadingCellToShow = 4

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        taskCollectionView.delegate = self
        taskCollectionView.dataSource = self
        output.viewIsReady()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        displayLoadingCells()
        output.viewIsReady()
    }

    func displayLoadingCells() {
        isLoading = true
        self.taskCollectionView.reloadData()
    }

    func stopDisplayLoadingCells() {
        isLoading = false
        self.taskCollectionView.reloadData()
        self.taskCollectionView.reloadInputViews()
    }

    @IBAction func AddButtonDidTouched(_ sender: Any) {
        output.onAddButtonTouched()
    }

    @IBAction func profilePictureButtonDidTouch(_ sender: Any) {
        output.onProfileButtonTouched()
    }


    // MARK: TaskDashboardViewInput
    func setupInitialState() {

    }

    func display(task: [Task]) {
        self.tasks = task
        self.taskCollectionView.reloadData()
    }

    func displayAlertMessage(messageToDisplay: String) {
        let alertController = UIAlertController(title: "Erreur", message: messageToDisplay, preferredStyle: .alert)
        self.present(alertController, animated: true)
    }

    func startDisplayLoading() {
        displayLoadingCells()
    }

    func endDisplayLoading() {
        stopDisplayLoadingCells()
    }


}


extension TaskDashboardViewController: UICollectionViewDelegate {

}

extension TaskDashboardViewController: UICollectionViewDataSource {


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if isLoading {
            return numberOfloadingCellToShow + 1
        }
        return tasks.count + 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if indexPath.row == 0 {
            return collectionView.dequeueReusableCell(withReuseIdentifier: addTaskCellIdentifier, for: indexPath)
        }

        guard isLoading == false else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: taskCellIdentifier, for: indexPath)
            cell.windless.start()
            return cell
        }

        let taskToDisplay = tasks[indexPath.row - 1]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: taskCellIdentifier, for: indexPath)

        if let cell = cell as? TaskCollectionViewCell {
            cell.windless.end()
            cell.setTaskCell(title: taskToDisplay.name)
            cell.setTaskCell(urgent: taskToDisplay.isUrgent)
            cell.setTaskCell(dueDate: taskToDisplay.dueDate)
            cell.setTaskCell(important: taskToDisplay.isImportant)
        }
        return cell
    }
}
