//
//  DBProfile.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBProfile: Object {
    @Persisted var userResponse = DBProfileResponse()
}

class DBProfileResponse: Object {
    @Persisted var id = 0
    @Persisted var firstName = ""
    @Persisted var lastName = ""
    @Persisted var canAccessClosed = true
    @Persisted var isClosed = true
}
