//
//  TaskDashboardTaskDashboardViewController.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class TaskDashboardViewController: UIViewController, TaskDashboardViewInput {
 

    @IBOutlet private weak var taskCollectionView: UICollectionView!
    
    var output: TaskDashboardViewOutput!
    
    private let taskCellIdentifier = "TaskC"
    private let addTaskCellIdentifier = "AddC"
    private var tasks = [Task]()

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        taskCollectionView.delegate = self
        taskCollectionView.dataSource =  self
    }


    // MARK: TaskDashboardViewInput
    func setupInitialState() {
    // Nothing to teardow from now
    }
    
    func display(task: [Task]) {
        self.tasks = task
        self.taskCollectionView.reloadData()
    }
    
}

extension TaskDashboardViewController : UICollectionViewDelegate {
    
}

extension TaskDashboardViewController :UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tasks.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 {
            return collectionView.dequeueReusableCell(withReuseIdentifier: addTaskCellIdentifier, for: indexPath)
        }
        let taskToDisplay = tasks[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: taskCellIdentifier, for: indexPath)
        
        if let cell = cell as? TaskCollectionViewCell {
            cell.setTaskCell(title: taskToDisplay.title)
            cell.setTaskCell(urgent: taskToDisplay.isUrgent)
            cell.setTaskCell(dueDate: taskToDisplay.dueDate)
            cell.setTaskCell(important: taskToDisplay.isImportant)
        }
        return cell
    }
}
