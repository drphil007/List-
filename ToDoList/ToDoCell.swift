//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Philine Wairata on 04/05/2018.
//  Copyright © 2018 Philine Wairata. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    
    // Button for To-Do.
    @IBOutlet weak var isCompleteButton: UIButton!
    
    // Shows label for to-do.
    @IBOutlet weak var titleLabel: UILabel!
    
    // Action for button tapped.
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
}
