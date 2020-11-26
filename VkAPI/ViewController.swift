//
//  ViewController.swift
//  VkAPI
//
//  Created by Michael Iliouchkin on 26.11.2020.
//

import UIKit
import Alamofire

class Session {
    let token = "15583ea4ff0862560cc7fa5e038fe65f8c764c51de91bd86e26765ded56eefec8f7a4bb4523212c50d6d4"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session()
        
        var urlComponentsFriends = URLComponents()
        urlComponentsFriends.scheme = "https"
        urlComponentsFriends.host = "api.vk.com"
        urlComponentsFriends.path = "/method/friends.get"
        urlComponentsFriends.queryItems = [
            URLQueryItem(name: "PARAMETERS", value: "PARAMETERS"),
            URLQueryItem(name: "access_token", value: session.token),
            URLQueryItem(name: "v", value: "5.126")
        ]
        
        AF.request(urlComponentsFriends).responseJSON { response in
                    
                    print("Friends list:")
                    print(response.value!)
                }
        
        var urlComponentsPhotos = URLComponents()
        urlComponentsPhotos.scheme = "https"
        urlComponentsPhotos.host = "api.vk.com"
        urlComponentsPhotos.path = "/method/photos.getAll"
        urlComponentsPhotos.queryItems = [
            URLQueryItem(name: "PARAMETERS", value: "PARAMETERS"),
            URLQueryItem(name: "access_token", value: session.token),
            URLQueryItem(name: "v", value: "5.126")
        ]
        
        AF.request(urlComponentsPhotos).responseJSON { response in
                    
                    print("Photos list:")
                    print(response.value!)
                }
        
        var urlComponentsGroupsCurrent = URLComponents()
        urlComponentsGroupsCurrent.scheme = "https"
        urlComponentsGroupsCurrent.host = "api.vk.com"
        urlComponentsGroupsCurrent.path = "/method/groups.get"
        urlComponentsGroupsCurrent.queryItems = [
            URLQueryItem(name: "PARAMETERS", value: "PARAMETERS"),
            URLQueryItem(name: "access_token", value: session.token),
            URLQueryItem(name: "v", value: "5.126")
        ]
        
        AF.request(urlComponentsGroupsCurrent).responseJSON { response in
                    
                    print("Current groups list:")
                    print(response.value!)
                }
        
        var urlComponentsGroupsSearch = URLComponents()
        urlComponentsGroupsSearch.scheme = "https"
        urlComponentsGroupsSearch.host = "api.vk.com"
        urlComponentsGroupsSearch.path = "/method/groups.search"
        urlComponentsGroupsSearch.queryItems = [
            URLQueryItem(name: "PARAMETERS", value: "PARAMETERS"),
            URLQueryItem(name: "access_token", value: session.token),
            URLQueryItem(name: "q", value: "Music"),
            URLQueryItem(name: "offset", value: "3"),
            URLQueryItem(name: "count", value: "3"),
            URLQueryItem(name: "v", value: "5.126")
        ]
        
        AF.request(urlComponentsGroupsSearch).responseJSON { response in
                    
                    print("Searched groups list:")
                    print(response.value!)
                }
    }
}
