//
//  Profile.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 31.07.2022.
//

import Foundation

struct Profile: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        userResponse = try container.decode([ProfileResponse].self, forKey: .userResponse)
    }
    let userResponse: [ProfileResponse]
    
    enum CodingKeys: String, CodingKey {
        case userResponse
    }
}
struct ProfileResponse: Decodable {
    
    init(from decoder: Decoder) throws {
        let container =  try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        firstName = try container.decode(String.self, forKey: .firstName)
        lastName = try container.decode(String.self, forKey: .lastName)
        canAccessClosed = try container.decode(Bool.self, forKey: .canAccessClosed)
        isClosed = try container.decode(Bool.self, forKey: .isClosed)
    }
    
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

