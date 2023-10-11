//
//  ViewController.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let students: [Student] = [
        Student(firstName: "Brenden", lastName: "Wydra", rating: Rating.fire),
        Student(firstName: "Noel", lastName: "Ortiz", rating: Rating.mid),
        Student(firstName: "Jake", lastName: "Kenefick", rating: Rating.mid),
        Student(firstName: "Oliver", lastName: "Murray", rating: Rating.mid),
        Student(firstName: "Tyler", lastName: "Mok", rating: Rating.trash),
        Student(firstName: "Stanislav", lastName: "Stajila", rating: Rating.mid),
        Student(firstName: "Andrew", lastName: "Kaiser", rating: Rating.mid),
        Student(firstName: "Mikaela", lastName: "Wallen", rating: Rating.mid),
        Student(firstName: "Catherine", lastName: "Huseby", rating: Rating.mid),
        Student(firstName: "Liam", lastName: "Cox", rating: Rating.trash),
        Student(firstName: "Annahlu", lastName: "Raclawski", rating: Rating.mid),
        Student(firstName: "Natalie", lastName: "DuShane", rating: Rating.trash),
        Student(firstName: "Claire", lastName: "McGuire", rating: Rating.fire),
        Student(firstName: "Olivia", lastName: "Mendez", rating: Rating.mid),
        Student(firstName: "Avery", lastName: "McAllister", rating: Rating.mid),
        Student(firstName: "Alvin", lastName: "Chen", rating: Rating.fire),
        Student(firstName: "Gabi", lastName: "Avila", rating: Rating.mid),
        Student(firstName: "Miles", lastName: "Richmond", rating: Rating.mid),
        Student(firstName: "Corey", lastName: "Atkinson", rating: Rating.mid),
        Student(firstName: "Mason", lastName: "Bartell", rating: Rating.mid),
        Student(firstName: "Brian", lastName: "Wang", rating: Rating.mid)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

