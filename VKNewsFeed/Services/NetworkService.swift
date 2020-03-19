//
//  NetworkService.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 19.03.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation

final class NetworkService {
    
    private let authService: AuthService
    
    init(authService: AuthService = AppDelegate.shared().authService) {
        self.authService = authService
    }
    func getFeed() {
        var components = URLComponents()
        
        guard let token = authService.token else { return }
        let params = ["filters": "post,photo"]
        var allParams = params
        allParams["access_token"] = token
        allParams["v"] = API.version
        
        components.scheme = API.scheme
        components.host = API.host
        components.path = API.newsFeed
        components.queryItems = allParams.map({ URLQueryItem(name: $0, value: $1)})
        
        let url = components.url!
        print(url)
    }
}
