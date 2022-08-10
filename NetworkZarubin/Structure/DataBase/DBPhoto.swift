//
//  DBPhoto.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 10.08.2022.
//

import Foundation
import RealmSwift

class DBPhoto: Object {
    @objc dynamic var response = DBPhotoResponse()
}

class DBPhotoResponse: Object {
    @objc dynamic var count = 0
    @objc dynamic var items = DBPhotoItems()
}

class DBPhotoItems: Object {
    @objc dynamic var albomId = 0
    @objc dynamic var id = 0
    @objc dynamic var url = ""
}
