//
//  User.swift
//  TakaNotes
//
//  Created by Takawakaji on 8/3/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

