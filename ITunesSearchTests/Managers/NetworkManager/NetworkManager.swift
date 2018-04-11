//
//  NetworkManager.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 09/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol NetworkManager {
    
    func getMedia(query: String, limit: String, mediaType: String, deviceType:String, completionBlock:@escaping (SearchResultStruct) -> ())
}
