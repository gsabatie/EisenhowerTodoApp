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

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        taskCollectionView.delegate = self
        taskCollectionView.dataSource =  self
    }


    // MARK: TaskDashboardViewInput
    func setupInitialState() {
    }
}

extension TaskDashboardViewController : UICollectionViewDelegate {
    
}

extension TaskDashboardViewController :UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: taskCellIdentifier, for: indexPath)
        return cell
    }
    
    
}
