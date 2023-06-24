//
//  UserProfile.swift
//  OnTheMap
//
//  Created by Ben Chukwuma on 24/06/2023.
//

import Foundation
struct UserProfile: Codable {
    let firstName: String
    let lastName: String
    let nickname: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case nickname
    }
 
}
