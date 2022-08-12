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
        self.response = try container.decode(GroupResponse.self, forKey: .response)
    }
    let response: GroupResponse
    
    enum CodingKeys: String, CodingKey {
        case response
    }
}
struct GroupResponse: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.count = try container.decode(Int.self, forKey: .count)
        self.items = try container.decode([GroupItem].self, forKey: .items)
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
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.screenName = try container.decode(String.self, forKey: .screenName)
        self.isClosed = try container.decode(Int.self, forKey: .isClosed)
        self.type = try container.decode(String.self, forKey: .type)
        self.isAdmin = try container.decode(Int.self, forKey: .isAdmin)
        self.isMember = try container.decode(Int.self, forKey: .isMember)
        self.isAdvertiser = try container.decode(Int.self, forKey: .isAdvertiser)
        self.photoFifty = try container.decode(String.self, forKey: .photoFifty)
        self.photoOneHundred = try container.decode(String.self, forKey: .photoOneHundred)
        self.photoTwoHundred = try container.decode(String.self, forKey: .photoTwoHundred)
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
