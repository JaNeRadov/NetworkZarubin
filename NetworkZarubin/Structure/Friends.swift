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
        let track_code: String
        let first_name: String
        let last_name: String
        let can_access_closed: Bool
        let is_closed: Bool
        
}
       
extension Items {

    enum CodingKeys: String, CodingKey {
            case id
            case nickname
            case track_code = "trackCode"
            case first_name = "firstName"
            case last_name = "lastName"
            case can_access_closed = "canAccessClosed"
            case is_closed = "isClosed"
        }
}

