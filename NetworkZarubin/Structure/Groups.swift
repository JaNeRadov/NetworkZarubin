//
//  Groups.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation

struct Groups: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        response = try container.decode(GroupResponse.self, forKey: .response)
    }
    let response: GroupResponse
    
    enum CodingKeys: String, CodingKey {
        case response
    }
}
struct GroupResponse: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decode(Int.self, forKey: .count)
        items = try container.decode([GroupItem].self, forKey: .items)
    }
    let count: Int
    let items: [GroupItem]
    
    enum CodingKeys: String, CodingKey {
        case count
        case items
    }
}
struct GroupItem: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        screenName = try container.decode(String.self, forKey: .screenName)
        isClosed = try container.decode(Int.self, forKey: .isClosed)
        type = try container.decode(String.self, forKey: .type)
        isAdmin = try container.decode(Int.self, forKey: .isAdmin)
        isMember = try container.decode(Int.self, forKey: .isMember)
        isAdvertiser = try container.decode(Int.self, forKey: .isAdvertiser)
        photoFifty = try container.decode(String.self, forKey: .photoFifty)
        photoOneHundred = try container.decode(String.self, forKey: .photoOneHundred)
        photoTwoHundred = try container.decode(String.self, forKey: .photoTwoHundred)
    }
    let id: Int
    let name: String
    let screenName: String
    let isClosed: Int
    let type: String
    let isAdmin: Int
    let isMember: Int
    let isAdvertiser: Int
    let photoFifty: String
    let photoOneHundred: String
    let photoTwoHundred: String
}
extension GroupItem {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case screenName = "screen_name"
        case isClosed = "is_closed"
        case type
        case isAdmin = "is_admin"
        case isMember = "is_member"
        case isAdvertiser = "is_advertiser"
        case photoFifty = "photo_50"
        case photoOneHundred = "photo_100"
        case photoTwoHundred = "photo_200"
    }
}
