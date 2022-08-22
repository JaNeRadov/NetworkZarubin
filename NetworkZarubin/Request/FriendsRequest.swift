//
//  FriendsRequest.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 16.07.2022.
//

import Foundation
import WebKit
import Alamofire
import RealmSwift

class GetFriends {
    
    func getFriends() {
        
        let session = URLSession.shared
        
        var urlConstruct = URLComponents()
        urlConstruct.scheme = "https"
        urlConstruct.host = "api.vk.com"
        urlConstruct.path = "/method/friends.get"
        urlConstruct.queryItems = [
            URLQueryItem(name: "access_token", value: Session.instance.token),
            URLQueryItem(name: "fields", value: "nickname"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        guard let url = urlConstruct.url else { return }
        
        let task = session.dataTask(with: url) { ( data, response, error) in
            let decoder = JSONDecoder()
            
            guard let jsonData = data else { return }
            guard let friends = try? decoder.decode([Friends].self, from: jsonData) else { return }
            print(friends)
//            let realmFriends: [DBFriends] = friends.map { friend in
//                let realmFriend = DBFriends()
//            }
        }
        task.resume()
    }
}
    
    
    

