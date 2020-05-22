//
//  PostData.swift
//  iTechNewsApp
//
//  Created by Christian Lorenzo on 5/21/20.
//  Copyright © 2020 Christian Lorenzo. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
