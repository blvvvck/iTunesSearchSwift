//
//  SearchResultStruct.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 09/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

struct SearchResultStruct: Codable {
    
    struct Results: Codable {
        let trackName: String
        let artistName: String
        let artworkUrl60: String
        let trackPrice: Double
        let description: String?
        let trackViewUrl: String
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            
            trackName = try values.decode(String.self, forKey: .trackName)
            artistName = try values.decode(String.self, forKey: .artistName)
            artworkUrl60 = try values.decode(String.self, forKey: .artworkUrl60)
            trackViewUrl = try values.decode(String.self, forKey: .trackViewUrl)
                
            if let description = try values.decodeIfPresent(String.self, forKey: .shortDescription) {
                self.description = description
            } else {
                self.description = try values.decodeIfPresent(String.self, forKey: .description)
            }
            
            if let trackPrice = try values.decodeIfPresent(Double.self, forKey: .trackPrice) {
                self.trackPrice = trackPrice
            } else {
                self.trackPrice = try values.decode(Double.self, forKey: .price)
            }
        }
    
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(trackName, forKey: .trackName)
            try container.encode(artistName, forKey: .artistName)
            try container.encode(description, forKey: .shortDescription)
            try container.encode(trackPrice, forKey: .trackPrice)
            try container.encode(artworkUrl60, forKey: .artworkUrl60)
        }
        
        enum CodingKeys: String, CodingKey {
            case trackName
            case artistName
            case shortDescription
            case description
            case trackPrice
            case price
            case artworkUrl60
            case trackViewUrl
        }

    }
    
    let results: [Results]
}

