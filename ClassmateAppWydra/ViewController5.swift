//
//  ViewController5.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/20/23.
//

import UIKit

class ViewController5: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var delegate: StudentDelegate!
    @IBOutlet weak var studentTable: UITableView!
    
    var students: [Student]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTable.delegate = self
        studentTable.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        students = delegate.getList()
        studentTable.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController3
        nvc.delegate2 = delegate
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! StudentCell
        cell.configure(first: students[indexPath.row].firstName, second: students[indexPath.row].lastName, third: "\(students[indexPath.row].rating)")
        return cell
    }

}
