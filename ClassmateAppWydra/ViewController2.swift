//
//  ViewController2.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/12/23.
//

import UIKit

class ViewController2: UIViewController {
    
    var delegate: StudentDelegate!
    
    var students: [Student] = []
    
    var index = 0
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        students = delegate.getList()

        updateLabel()
    }
    
    @IBAction func nextPress(_ sender: UIButton) {
        index += 1
        if(index == students.count){
            index = 0
        }
        updateLabel()
    }
    
    @IBAction func sortNamePress(_ sender: UIButton) {
        students = students.sorted { $0.lastName < $1.lastName }
        delegate.changeList(students)
        index = 0
        updateLabel()
    }
    
    @IBAction func sortRatingPress(_ sender: UIButton) {
        students = students.sorted { $0.rating.order < $1.rating.order }
        delegate.changeList(students)
        index = 0
        updateLabel()
    }
    
    func updateLabel(){
        valueLabel.text = "\(students[index].firstName) \(students[index].lastName), \(students[index].rating)"
    }

}
