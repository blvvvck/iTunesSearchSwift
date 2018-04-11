//
//  MediaDataSourceInput.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

protocol MediaDataSourceInput: UITableViewDataSource, UITableViewDelegate {
    
    func setCellModels(with models: [MediaCellModel])
    func clearTableView()
}
