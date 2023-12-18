//
//  MenuList.swift
//  Little Lemon
//
//  Created by Reiß, Sylvia on 12/17/23.
//

import Foundation

struct MenuList: Codable {
    let menu: [MenuItem]
    
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
}


