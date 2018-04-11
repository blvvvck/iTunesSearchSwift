//
//  SearchView.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

protocol SearchViewInput: class {
    
    func prepareTableView()
    func prepareSearchController()
    func set(cellModels: [MediaCellModel])
    func reloadTableView()
}
