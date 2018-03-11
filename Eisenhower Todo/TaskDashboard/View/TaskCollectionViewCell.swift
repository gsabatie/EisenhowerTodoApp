//
//  TaskCollectionViewCell.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 26/02/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import UIKit

protocol TaskCollectionViewCellInput {
    func setTaskCell(title : String)
    func setTaskCell(dueDate : Date)
    func setTaskCell(important: Bool)
    func setTaskCell(urgent: Bool)
}

class TaskCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak private var taskTitleLabel: UILabel!
    
    @IBOutlet weak private var duDateLabel: UILabel!
    
    @IBOutlet weak private var importantIconImageView: UIImageView!
    
    @IBOutlet weak private var urgentIconImageView: UIImageView!
    
    override func awakeFromNib() {
        importantIconImageView.isHidden = true
        urgentIconImageView.isHidden = true
    }
}

extension TaskCollectionViewCell : TaskCollectionViewCellInput {
    func setTaskCell(title: String) {
        taskTitleLabel.text = title
    }
    
    func setTaskCell(dueDate: Date) {
        
    }
    
    func setTaskCell(important: Bool) {
        importantIconImageView.isHidden = false
    }
    
    func setTaskCell(urgent: Bool) {
        urgentIconImageView.isHidden = false
    }
    
    
}
