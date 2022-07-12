//
//  Session.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 11.07.2022.
//

import Foundation

class Session {
    private init() {}
    
    static let instance = Session()
    
    var token: String = ""
    let userID: Int = 0
}
