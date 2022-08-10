//
//  DBProfile.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBProfile: Object {
    @objc dynamic var userResponse = [DBProfileResponse]()
}

class DBProfileResponse: Object {
    @objc dynamic var id = 0
    @objc dynamic var firstName = ""
    @objc dynamic var lastName = ""
    @objc dynamic var canAccessClosed = true
    @objc dynamic var isClosed = true
}
