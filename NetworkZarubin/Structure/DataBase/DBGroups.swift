//
//  DBGroups.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBGroups: Object {
    @objc dynamic var response = DBGroupsResponse()
}
class DBGroupsResponse: Object {
    @objc dynamic var count = 0
    @objc dynamic var items = [DBGroupsItems]()
}

class DBGroupsItems: Object {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var screenName = ""
    @objc dynamic var isClosed = 0
    @objc dynamic var type = ""
    @objc dynamic var isAdmin = 0
    @objc dynamic var isMember = 0
    @objc dynamic var isAdvertiser = 0
    @objc dynamic var photoFifty = ""
    @objc dynamic var photoOneHundred = ""
    @objc dynamic var photoTwoHundred = ""
}
