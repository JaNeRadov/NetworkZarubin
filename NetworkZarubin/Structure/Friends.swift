//
//  Friends.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation

struct Friends: Decodable {
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.response = try container.decode(FriendsResponse.self, forKey: .response)
        
    }
    
    let response: FriendsResponse
    
    enum CodingKeys: String, CodingKey {
        case response
    }
}

struct FriendsResponse: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.count = try container.decode(Int.self, forKey: .count)
        self.items = try container.decode([FriendsItems].self, forKey: .items)
    }
    let count: Int
    let items: [FriendsItems]
    
    enum CodingKeys: String, CodingKey {
        case count
        case items
    }
}

struct FriendsItems: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.nickname = try container.decode(String.self, forKey: .nickname)
        self.trackCode = try container.decode(String.self, forKey: .trackCode)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.canAccessClosed = try container.decode(Bool.self, forKey: .canaccessClosed)
        self.isClosed = try container.decode(Bool.self, forKey: .isClosed)
    }
    
    let id: Int
    let nickname: String
    let trackCode: String
    let firstName: String
    let lastName: String
    let canAccessClosed: Bool
    let isClosed: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case nickname
        case trackCode = "track_code"
        case firstName = "first_name"
        case lastName = "last_name"
        case canaccessClosed = "can_access_closed"
        case isClosed = "is_closed"
    }
}
