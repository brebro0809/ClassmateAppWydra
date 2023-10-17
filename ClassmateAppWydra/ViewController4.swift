//
//  ViewController4.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/17/23.
//

import UIKit

class ViewController4: UIViewController {
    
    var delegate: StudentDelegate!
    var students: [Student]!
    var currentStudent: Student!
    var count = 0

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        students = delegate.getList()
        nextStudent()
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        if (submitButton.currentTitle! == "Submit") {
            checkAnswer()
        } else {
            nextStudent()
        }
    }
    
    func nextStudent() {
        currentStudent = students[Int.random(in:0..<students.count)]
        nameLabel.text = currentStudent.lastName
        submitButton.setTitle("Submit", for: .normal)
    }
    
    func checkAnswer() {
        if (textInput.text!.lowercased() == currentStudent.firstName.lowercased()) {
            count += 1
            nameLabel.text = "Correct: \(currentStudent.firstName), \(currentStudent.lastName) | \(count)"
        } else {
            nameLabel.text = "Incorrect: \(currentStudent.firstName), \(currentStudent.lastName) | \(count)"
        }
        textInput.text = ""
        submitButton.setTitle("Next", for: .normal)
    }

}
