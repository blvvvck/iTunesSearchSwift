//
//  SearchInteractor.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class SearchInteractor: SearchInteractorInput {
   
    var networkManager: NetworkManager!
    var dbManager: DbManager!
    var settings: SettingsModel!
    var mediaResults = [MediaCellModelImplementation]()
    var presenter: SearchInteractorOutput!
    
    
    func getMediaResults(with text: String) {
        
        settings = dbManager.getDataFromDB()
        
        if settings == nil {
            settings = dbManager.getDefaultData()
        }
        
        networkManager.getMedia(query: text, limit: settings.countOfObjects, mediaType: Media.getByIndex(settings.mediatypeIndex).rawValue, deviceType: "") { [weak self] (results) in
                guard let strongSelf = self else { return }
                let newResults = results.results
            strongSelf.mediaResults.removeAll()
            for model in newResults {
                let cellModel = MediaCellModelImplementation(author: model.artistName, description: model.description, imageURL: model.artworkUrl60, price: model.trackPrice, viewURL: model.trackViewUrl, name: model.trackName)
                strongSelf.mediaResults.append(cellModel)
            }
            
            DispatchQueue.main.async {
                strongSelf.presenter.didFinishGettingMediaResults(with: strongSelf.mediaResults)
            }
        }
    }
}
