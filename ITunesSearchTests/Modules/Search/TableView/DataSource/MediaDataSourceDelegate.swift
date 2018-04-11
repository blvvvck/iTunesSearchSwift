//
//  MediaDataSourceDelegate.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol MediaDataSourceDelegate {
    
    /// Function for heandle the tapped cell
    ///
    /// - Parameter row: row number
    func didTapOnCell(with url: URL)
    
}
