//
//  DBGroups.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBGroups: Object {
    @Persisted var response = DBGroupsResponse()
}
class DBGroupsResponse: Object {
    @Persisted var count = 0
    @Persisted var items = DBGroupsItems()
}

class DBGroupsItems: Object {
    @Persisted var id = 0
    @Persisted var name = ""
    @Persisted var screenName = ""
    @Persisted var isClosed = 0
    @Persisted var type = ""
    @Persisted var isAdmin = 0
    @Persisted var isMember = 0
    @Persisted var isAdvertiser = 0
    @Persisted var photoFifty = ""
    @Persisted var photoOneHundred = ""
    @Persisted var photoTwoHundred = ""
}
