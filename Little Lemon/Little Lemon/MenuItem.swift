//
//  MenuItem.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import Foundation

struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let title: String
    let price: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case image = "image"
        case price = "price"
    }
}


