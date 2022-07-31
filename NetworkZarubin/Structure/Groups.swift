//
//  Groups.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation

struct Groups: Decodable {
    let response: GroupResponse
}
struct GroupResponse: Decodable {
    let count: Int
    let items: [GroupItem]
}
struct GroupItem: Decodable {
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
