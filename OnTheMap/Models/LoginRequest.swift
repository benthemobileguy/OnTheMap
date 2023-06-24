//
//  LoginRequest.swift
//  OnTheMap
//
//  Created by Ben Chukwuma on 24/06/2023.
//

import Foundation
struct LoginRequest : Codable {
    let username: String
    let password: String
    
    enum CodingKeys: String, CodingKey{
        case username = "username"
        case password = "password"
    }
}
