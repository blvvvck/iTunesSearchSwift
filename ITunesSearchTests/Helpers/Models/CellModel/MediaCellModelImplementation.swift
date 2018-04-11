//
//  MediaCellModelImplementation.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class MediaCellModelImplementation: MediaCellModel {
    
    var author: String
    var name: String
    var description: String?
    var price: Double
    var imageUrl: String
    var viewUrl: String
    
    init(author: String, description: String?, imageURL: String, price: Double, viewURL: String, name: String) {
        self.author = author
        self.description = description
        self.price = price
        self.imageUrl = imageURL
        self.viewUrl = viewURL
        self.name = name
    }
    
}
