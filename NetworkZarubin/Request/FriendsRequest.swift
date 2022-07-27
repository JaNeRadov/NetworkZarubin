//
//  FriendsRequest.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 16.07.2022.
//

import Foundation
import WebKit
import Alamofire

class GetFriends {
    
    func friendsDecode(for data: Data) throws ->  Friends  {
        return try JSONDecoder().decode(Friends.self, from: data)
    }
    
    func getFriends() {
        
        let session = URLSession.shared
        
        var urlConstruct = URLComponents()
        urlConstruct.scheme = "https"
        urlConstruct.host = "api.vk.com"
        urlConstruct.path = "/method/friends.get"
        urlConstruct.queryItems = [
            URLQueryItem(name: "access_token", value: Session.instance.token),
            URLQueryItem(name: "fields", value: "first_name"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        guard let url = urlConstruct.url else { return }
        
        let task = session.dataTask(with: url) { ( data, response, error ) in
            guard let jsonData = data else { return }
//            let jsonString = String(data: jsonData, encoding: .utf8)
//            print(jsonString)
            
            guard let friends = try? JSONDecoder().decode(Friends.self , from: jsonData) else { return }
            print(friends.response)
            
            
        }
        
        
        task.resume()
        
        
    }
    
  
    
   
}
