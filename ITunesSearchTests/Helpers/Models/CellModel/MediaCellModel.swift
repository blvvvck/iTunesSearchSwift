//
//  MediaCellModel.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol MediaCellModel {
    
    var author: String { get set }
    var name: String { get set }
    var description: String? { get set }
    var price: Double { get set }
    var imageUrl: String { get set }
    var viewUrl: String { get set }
}
