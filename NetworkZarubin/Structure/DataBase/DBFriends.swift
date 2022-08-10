//
//  DBFriends.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBFriends: Object {
    @objc dynamic var response = DBFriendsRespose()
}

class DBFriendsRespose: Object {
    @objc dynamic var count = 0
    @objc dynamic var items = [DBFriendsItems]()
}

class DBFriendsItems: Object {
    @objc dynamic var id = 0
    @objc dynamic var nickname = ""
    @objc dynamic var tracCode = ""
    @objc dynamic var firstName = ""
    @objc dynamic var lastName = ""
    @objc dynamic var canAccessClosed = true
    @objc dynamic var isClosed = true
}
