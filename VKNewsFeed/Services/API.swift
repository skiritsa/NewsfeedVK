//
//  API.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 19.03.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation

struct API {
    static let scheme = "https"
    static let host = "api.vk.com"
    static let version = "5.103"
    
    static let newsFeed = "/method/newsfeed.get"
    static let user = "/method/users.get"
}
