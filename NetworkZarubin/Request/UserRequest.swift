//
//  UserRequest.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 31.07.2022.
//

import Foundation
import WebKit


class GetUsers {
    
    func getUsers() {
        let session = URLSession.shared
        
        var urlConstruct = URLComponents()
        urlConstruct.scheme = "https"
        urlConstruct.host = "api.vk.com"
        urlConstruct.path = "/method/users.get"
        urlConstruct.queryItems = [
            URLQueryItem(name: "access_token", value: Session.instance.token),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        guard let url = urlConstruct.url else { return }
        
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let jsonData = data else { return }
            
            guard let users = try? JSONDecoder().decode(Profile.self, from: jsonData) else { return }
            print (users.userResponse)
        }
        task.resume()
    }
}

