//
//  Photo.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation

struct Photo: Decodable {
    let response: PhotoResponse
}
struct PhotoResponse: Decodable {
    let count: Int
    let items: PhotoItems
}
struct PhotoItems: Decodable {
    let albomId: Int
    let id: Int
    let url: String
}
