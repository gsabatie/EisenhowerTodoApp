//
//  TaskDashboardTaskDashboardViewOutput.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

protocol TaskDashboardViewOutput {

    /**
        @author sabati_g
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func onAddButtonTouched()
    
    func onProfileButtonTouched()

    func onCollectionViewItemSwiped()
    
    func onCollectionViewItemSelected()
}
