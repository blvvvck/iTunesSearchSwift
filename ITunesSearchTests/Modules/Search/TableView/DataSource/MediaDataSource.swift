//
//  MediaDataSource.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit

class MediaDataSource: NSObject, MediaDataSourceInput {
    
    var cellModels = [MediaCellModel]()
    let mediaCellIdentifier = "mediaCell"
    var delegate: MediaDataSourceDelegate!
    
    init(_ delegate: MediaDataSourceDelegate) {
        self.delegate = delegate
    }
    
    func setCellModels(with models: [MediaCellModel]) {
        cellModels = models
    }
    
    func clearTableView() {
        cellModels.removeAll()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: mediaCellIdentifier, for: indexPath) as! MediaTableViewCell
        let model = cellModels[indexPath.row]
        cell.prepare(with: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = cellModels[indexPath.row]
        guard let url = URL(string: model.viewUrl) else { return }
        print(url)
        delegate.didTapOnCell(with: url)
    }
    
}
