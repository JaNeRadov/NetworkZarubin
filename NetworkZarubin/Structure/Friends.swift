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
        response = try container.decode(Response.self, forKey: .response)
    }
    let response: Response
    
    enum CodingKeys: String, CodingKey {
        case response
    }
    
}
struct Response: Decodable {
    
    init(from decoder: Decoder) throws {
        let container  = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decode(Int.self, forKey: .count)
        items = try container.decode([Items].self, forKey: .items)
    }
    let count: Int
    let items: [Items]
    
    enum CodingKeys: String, CodingKey {
        case count
        case items
        
    }
    
}

struct Items: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        nickname = try container.decode(String.self, forKey: .nickname)
        trackCode = try container.decode(String.self, forKey: .trackCode)
        firstName = try container.decode(String.self, forKey: .firstName)
        lastName = try container.decode(String.self, forKey: .lastName)
        canAccessClosed = try container.decode(Bool.self, forKey: .canAccessClosed)
        isClosed = try container.decode(Bool.self, forKey: .isClosed)
    }
        let id: Int
        let nickname: String?
        let trackCode: String
        let firstName: String
        let lastName: String
        let canAccessClosed: Bool
        let isClosed: Bool
        
}
       
extension Items {

    enum CodingKeys: String, CodingKey {
            case id
            case nickname
            case trackCode = "track_code"
            case firstName = "first_name"
            case lastName = "last_name"
            case canAccessClosed = "can_access_closed"
            case isClosed = "is_closed"
        }
}

