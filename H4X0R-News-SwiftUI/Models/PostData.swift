//
//  PostData.swift
//  H4X0R-News-SwiftUI
//
//  Created by tetsuta matsuyama on 2022/07/28.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable {
    let title: String
}
