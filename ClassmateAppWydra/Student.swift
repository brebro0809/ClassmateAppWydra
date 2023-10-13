//
//  Student.swift
//  ClassmateAppWydra
//
//  Created by BRENDEN WYDRA on 10/11/23.
//

import Foundation

enum Rating {
    case fire
    case mid
    case trash
    
    var order: Int {
        switch self {
        case .fire: return 0
        case .mid: return 1
        case .trash: return 2
        }
    }
}

class Student {
    var firstName: String
    var lastName: String
    var rating: Rating
    
    init(firstName: String, lastName: String, rating: Rating) {
        self.firstName = firstName
        self.lastName = lastName
        self.rating = rating
    }
}
