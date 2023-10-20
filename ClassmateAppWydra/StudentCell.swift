//
//  StudentCell.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/20/23.
//

import Foundation
import UIKit

class StudentCell: UITableViewCell{
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabel2: UILabel!
    @IBOutlet weak var cellLabel3: UILabel!
    
    
    func configure(first: String, second: String, third: String) {
        cellLabel.text = first
        cellLabel2.text = second
        cellLabel3.text = third
    }
}
