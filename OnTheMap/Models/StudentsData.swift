//
//  StudentsData.swift
//  OnTheMap
//
//  Created by User on 6/25/23.
//

import Foundation

class StudentsData: NSObject {
    var students = [StudentInformation]()

    static let shared = StudentsData()

    private override init() {
        // Private initializer to enforce singleton pattern
    }
}
