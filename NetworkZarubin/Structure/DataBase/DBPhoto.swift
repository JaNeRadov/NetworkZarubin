//
//  DBPhoto.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBPhoto: Object {
    @Persisted var response = DBPhotoResponse()
}

class DBPhotoResponse: Object {
    @Persisted var count = 0
    @Persisted var items = DBPhotoItems()
}

class DBPhotoItems: Object {
    @Persisted var albomId = 0
    @Persisted var id = 0
    @Persisted var url = ""
}
