//
//  Profile.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 31.07.2022.
//

import Foundation

struct Profile: Decodable {
    let userResponse: [ProfileResponse]
}
struct ProfileResponse: Decodable {
    let id: Int
    let firstName: String
    let lastName: String
    let canAccessClosed: Bool
    let isClosed: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case canAccessClosed = "can_access_closed"
        case isClosed = "is_closed"
        
    }
}

