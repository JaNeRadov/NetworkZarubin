//
//  PhotoRequest.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import Foundation
import WebKit

class GetPhoto {
    
    func getPhoto() {
        let session = URLSession.shared
        
        var urlConstruct = URLComponents()
        urlConstruct.scheme = "https"
        urlConstruct.host = "api.vk.com"
        urlConstruct.path = "/method/photo.getAll"
        urlConstruct.queryItems =  [
            URLQueryItem(name: "access_token", value: Session.instance.token),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        guard let url = urlConstruct.url else { return }
        
        let task = session.dataTask(with: url) { (data, response, eror) in
            guard let jsonData = data else { return }
            guard let photo = try? JSONDecoder().decode(Photo.self, from: jsonData) else { return }
            print(photo.response)
                    
        }
        task.resume()
    }
}
