//
//  ViewController3.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/16/23.
//

import UIKit

class ViewController3: UIViewController {
    var delegate2: StudentDelegate!
    var students: [Student]!
    
    @IBOutlet weak var firstInput: UITextField!
    @IBOutlet weak var lastInput: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        students = delegate2.getList()
        errorLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firePress(_ sender: UIButton) {
        if (firstInput.text != "" && lastInput.text != "") {
            students.append(Student(firstName: firstInput.text!, lastName: lastInput.text!, rating: .fire))
            delegate2.changeList(students)
            errorLabel.text = "Added Student"
            errorLabel.isHidden = false
        } else {
            errorLabel.text = "Invalid Input"
            errorLabel.isHidden = false
        }
    }
    @IBAction func midPress(_ sender: UIButton) {
        if (firstInput.text != "" && lastInput.text != "") {
            students.append(Student(firstName: firstInput.text!, lastName: lastInput.text!, rating: .mid))
            delegate2.changeList(students)
            errorLabel.text = "Added Student"
            errorLabel.isHidden = false
        } else {
            errorLabel.text = "Invalid Input"
            errorLabel.isHidden = false
        }
    }
    
    @IBAction func trashPress(_ sender: UIButton) {
        if (firstInput.text != "" && lastInput.text != "") {
            students.append(Student(firstName: firstInput.text!, lastName: lastInput.text!, rating: .trash))
            delegate2.changeList(students)
            errorLabel.text = "Added Student"
            errorLabel.isHidden = false
        } else {
            errorLabel.text = "Invalid Input"
            errorLabel.isHidden = false
        }
    }
    
    
}
