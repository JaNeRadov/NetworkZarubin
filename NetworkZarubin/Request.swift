//
//  Request.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 11.07.2022.
//

import Foundation

import WebKit

func getFrieand() {
    //создание собственной сессии
    let configuration = URLSessionConfiguration.default
    let session = URLSession(configuration: configuration)
    // Создание конструктора для URL
    var urlConstruct = URLComponents()
    //Устанавливаем схему
    urlConstruct.scheme = "https"
    urlConstruct.host = "api.vk.com"
    //устанавливаем хост
    urlConstruct.path = "/method/friends.get"
    //Параметры запроса
    urlConstruct.queryItems = [
        URLQueryItem(name: "access_token", value: Session.instance.token),
        URLQueryItem(name: "friends", value: "nickname"),
        URLQueryItem(name: "v", value: "5.131")
    ]
    
    //задача для запуска
    let task = session.dataTask(with: urlConstruct.url!) { (data, response, error) in
        //преабразуем полученные данные от сервера в json
        let json = try? JSONSerialization.jsonObject(with: data! , options: JSONSerialization.ReadingOptions.allowFragments)
        
        print(json!)
    }
    
    task.resume()
}

func getPhoto() {
    let configuration = URLSessionConfiguration.default
    let session = URLSession(configuration: configuration)
    
    var urlConstruct = URLComponents()
    urlConstruct.scheme = "https"
    urlConstruct.host = "api.vk.com"
    urlConstruct.path = "/method/photos.getAll"
    urlConstruct.queryItems = [
        URLQueryItem(name: "access_token", value: Session.instance.token),
        URLQueryItem(name: "v", value: "5.131")
        ]
    
    let task = session.dataTask(with: urlConstruct.url!) { (data, response, error) in
        
        let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        
        print(json!)
    }
    task.resume()
}

func getGroup() {
    let configuration = URLSessionConfiguration.default
    let session = URLSession(configuration: configuration)
    
    var urlConstruct = URLComponents()
    urlConstruct.scheme = "https"
    urlConstruct.host = "api.vk.com"
    urlConstruct.path = "method/groups.getAll"
    urlConstruct.queryItems = [
        URLQueryItem(name: "access_token", value: Session.instance.token),
        URLQueryItem(name: "v", value: "5.131")
    ]
    
    let task = session.dataTask(with: urlConstruct.url!) { (data, response, error) in
        let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        
        print(json!)
    }
    task.resume()
}
