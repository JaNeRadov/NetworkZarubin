//
//  friendsSingleTone.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 11.07.2022.
//

import Foundation

class Friends {
    private init() {}
    
    static let instance = Friends()
    
    var name: String = ""
}
