//
//  ViewController2.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/12/23.
//

import UIKit

class ViewController2: UIViewController {
    
    
    var index = 0
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel()
    }
    
    @IBAction func nextPress(_ sender: UIButton) {
        index += 1
        if(index == students.count){
            index = 0
        }
        updateLabel()
    }
    
    func updateLabel(){
        valueLabel.text = "\(students[index].firstName) \(students[index].lastName), \(students[index].rating)"
    }

}
