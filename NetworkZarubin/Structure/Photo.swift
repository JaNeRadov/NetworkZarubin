//
//  Photo.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation

struct Photo: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        response = try container.decode(PhotoResponse.self, forKey: .response)
    }
    
    let response: PhotoResponse
    
    enum CodingKeys: String, CodingKey {
        case response
    }
    
}
struct PhotoResponse: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decode(Int.self, forKey: .count)
        items = try container.decode(PhotoItems.self, forKey: .items)
    }
    
    let count: Int
    let items: PhotoItems
    
    enum CodingKeys: String, CodingKey {
        case count
        case items
    }
}
struct PhotoItems: Decodable {
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        albomId = try container.decode(Int.self, forKey: .albbomId)
        id = try container.decode(Int.self, forKey: .id)
        url = try container.decode(String.self, forKey: .url)
    }
    
    let albomId: Int
    let id: Int
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case albbomId
        case id
        case url
    }
}
