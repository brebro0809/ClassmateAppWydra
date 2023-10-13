//
//  ViewController.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/11/23.
//

protocol StudentDelegate{
    func changeList(_ list: [Student])
    func getList() -> [Student]
}

import UIKit

class ViewController: UIViewController, StudentDelegate {
    
    var students = [
        Student(firstName: "Brenden", lastName: "Wydra", rating: .fire),
        Student(firstName: "Noel", lastName: "Ortiz", rating: .mid),
        Student(firstName: "Jake", lastName: "Kenefick", rating: .trash),
        Student(firstName: "Oliver", lastName: "Murray", rating: .fire),
        Student(firstName: "Tyler", lastName: "Mok", rating: .mid),
        Student(firstName: "Stanislav", lastName: "Stajila", rating: .trash),
        Student(firstName: "Andrew", lastName: "Kaiser", rating: .fire),
        Student(firstName: "Mikaela", lastName: "Wallen", rating: .mid),
        Student(firstName: "Catherine", lastName: "Huseby", rating: .trash),
        Student(firstName: "Liam", lastName: "Cox", rating: .trash),
        Student(firstName: "Annahlu", lastName: "Raclawski", rating: .mid),
        Student(firstName: "Natalie", lastName: "DuShane", rating: .trash),
        Student(firstName: "Claire", lastName: "McGuire", rating: .fire),
        Student(firstName: "Olivia", lastName: "Mendez", rating: .mid),
        Student(firstName: "Avery", lastName: "McAllister", rating: .trash),
        Student(firstName: "Alvin", lastName: "Chen", rating: .fire),
        Student(firstName: "Gabi", lastName: "Avila", rating: .mid),
        Student(firstName: "Miles", lastName: "Richmond", rating: .trash),
        Student(firstName: "Corey", lastName: "Atkinson", rating: .fire),
        Student(firstName: "Mason", lastName: "Bartell", rating: .mid),
        Student(firstName: "Brian", lastName: "Wang", rating: .trash)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func changeList(_ list: [Student]) {
        students = list
    }
    
    func getList() -> [Student] {
        return students
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.delegate = self
    }

}

