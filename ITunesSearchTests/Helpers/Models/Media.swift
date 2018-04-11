//
//  Media.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 08/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

enum Media: String {
    case movie = "movie"
    case podcast = "podcast"
    case music = "music"
    case musicVideo = "musicVideo"
    case audiobook = "audiobook"
    case shortFilm = "shortFilm"
    case tvShow = "tvShow"
    case software = "software"
    case ebook = "ebook"
    
    static func allMedia() -> [Media] {
        return [.movie, .podcast, .music, .musicVideo, .audiobook, .shortFilm, .tvShow, .software, .ebook]
    }
    
    static func getByIndex(_ index: Int) -> Media {
        return allMedia()[index]
    }
}
