//
//  DBFriends.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBFriends: Object {
    @Persisted
    var response = DBFriendsRespose()
}

class DBFriendsRespose: Object {
    @Persisted var count = 0
    @Persisted var items = DBFriendsItems()
}

class DBFriendsItems: Object {
    @Persisted var id = 0
    @Persisted var nickname = ""
    @Persisted var tracCode = ""
    @Persisted var firstName = ""
    @Persisted var lastName = ""
    @Persisted var canAccessClosed = true
    @Persisted var isClosed = true
}
