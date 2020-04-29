//
//  UserResponse.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 29.04.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation

struct UserResponseWrapped: Decodable {
    let response: [UserResponse]
}

struct UserResponse: Decodable {
    let photo100: String?
}
