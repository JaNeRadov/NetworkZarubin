//
//  GroupRequest.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 17.07.2022.
//

import Foundation
import WebKit

class GetGroups {
    
    
    func getGroup() {
        
        let session = URLSession.shared
        
        var urlCoonstruct = URLComponents()
        urlCoonstruct.scheme = "https"
        urlCoonstruct.host = "api.vk.com"
        urlCoonstruct.path = "/method/groups.get"
        urlCoonstruct.queryItems = [
            URLQueryItem(name: "access_token", value: Session.instance.token),
            URLQueryItem(name: "extended", value: "1"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        guard let url = urlCoonstruct.url else { return }
        
        let task = session.dataTask(with: url) { ( data, response, error ) in
            guard let jsonData = data else { return }
            guard let groups = try? JSONDecoder().decode(Groups.self, from: jsonData) else { return }
            print(groups.response)
        }
        
        task.resume()
    }
}
