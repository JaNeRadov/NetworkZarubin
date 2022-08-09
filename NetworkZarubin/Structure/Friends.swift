//
//  Friends.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation

struct Friends: Decodable {
    let response: Response
    
}
struct Response: Decodable {
    let count: Int
    let items: [Items]
}

struct Items: Decodable {
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

