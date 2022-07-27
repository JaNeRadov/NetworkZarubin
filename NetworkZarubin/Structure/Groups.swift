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
    let screen_name: String
    let is_closed: Int
    let type: String
    let is_admin: Int
    let is_member: Int
    let is_advertiser: Int
    let photo_50: String
    let photo_100: String
    let photo_200: String
}
extension GroupItem {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case screen_name = "screenName"
        case is_closed = "isClosed"
        case type
        case is_admin = "isAdmin"
        case is_member = "isMember"
        case is_advertiser = "isAdvertiser"
        case photo_50 = "photoFifty"
        case photo_100 = "photoOneHundred"
        case photo_200 = "photoTwoHundred"
    }
}
